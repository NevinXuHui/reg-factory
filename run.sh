#!/bin/bash
# =============================================================================
# reg-factory 一键运行脚本
# =============================================================================

set -e

# 获取脚本所在目录
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# 颜色输出
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 日志函数
info() { echo -e "${BLUE}[INFO]${NC} $1"; }
success() { echo -e "${GREEN}[SUCCESS]${NC} $1"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $1"; }
error() { echo -e "${RED}[ERROR]${NC} $1"; }

# 激活虚拟环境
activate_venv() {
    if [ ! -d "venv" ]; then
        error "虚拟环境不存在，请先运行: ./run.sh setup"
        exit 1
    fi
    source venv/bin/activate
}

# Python 命令（使用虚拟环境）
python_cmd() {
    if [ -d "venv" ]; then
        venv/bin/python "$@"
    else
        python3 "$@"
    fi
}

# 显示帮助信息
show_help() {
    cat << EOF
${GREEN}reg-factory 运行脚本${NC}

${YELLOW}用法:${NC}
  ./run.sh [命令] [参数]

${YELLOW}命令列表:${NC}
  ${BLUE}setup${NC}              初始化环境（安装依赖、配置）
  ${BLUE}check${NC}              检查运行环境
  ${BLUE}full${NC}               端到端注册（outlook → 三平台）
  ${BLUE}platforms${NC}          仅三平台注册（从邮箱池）
  ${BLUE}outlook${NC}            仅养 Outlook 号（循环注册，使用 BitBrowser）
  ${BLUE}outlook-standalone${NC} 独立 Outlook 注册（支持多种模式和代理配置）
  ${BLUE}export${NC}             导出已注册账号 cookie
  ${BLUE}unlock${NC}             批量解锁被锁的 Outlook 账号
  ${BLUE}tokens${NC}             提取 Outlook Graph refresh_token
  ${BLUE}broker${NC}             启动共享取码服务
  ${BLUE}clash${NC}              Clash 节点管理
  ${BLUE}help${NC}               显示此帮助信息

${YELLOW}地区选择 (--region):${NC}
  ${BLUE}en-us${NC}  美国 → @outlook.com (默认)
  ${BLUE}de-de${NC}  德国 → @outlook.de
  ${BLUE}fr-fr${NC}  法国 → @outlook.fr
  ${BLUE}es-es${NC}  西班牙 → @outlook.es
  ${BLUE}it-it${NC}  意大利 → @outlook.it
  ${BLUE}pt-br${NC}  巴西 → @outlook.com.br
  ${BLUE}ja-jp${NC}  日本 → @outlook.jp
  ${BLUE}ko-kr${NC}  韩国 → @outlook.kr

${YELLOW}示例:${NC}
  ./run.sh setup                              # 首次使用，初始化环境
  ./run.sh check                              # 检查环境是否就绪
  ./run.sh full                               # 注册 1 个 outlook + claude
  ./run.sh full --platforms claude chatgpt    # 注册 1 个 outlook + claude + chatgpt
  ./run.sh outlook --count 10                 # 养 10 个美国 outlook.com 号（BitBrowser）
  ./run.sh outlook --count 10 --region de-de  # 养 10 个德国 outlook.de 号（BitBrowser）
  ./run.sh outlook --region fr-fr            # 无限循环养法国 outlook.fr 号（BitBrowser）
  ./run.sh outlook-standalone --count 5 --region de-de  # 独立模式注册 5 个德国号
  ./run.sh outlook-standalone --count 10 --mode protocol  # 纯 HTTP 模式（最快）
  ./run.sh outlook-standalone --count 5 --no-proxy  # 不使用代理（Clash TUN）
  ./run.sh platforms                          # 从邮箱池注册三平台
  ./run.sh export claude chatgpt              # 导出 claude 和 chatgpt 的 cookie
  ./run.sh unlock                             # 解锁被锁账号
  ./run.sh tokens                             # 提取 token
  ./run.sh broker                             # 启动取码服务器
  ./run.sh clash list                         # 列出 Clash 节点
  ./run.sh clash ping                         # 测试 Clash 连通性

${YELLOW}交流群:${NC} QQ 1048143135

EOF
}

# 检查 Python 版本
check_python() {
    local py_cmd="python3"
    if [ -d "venv" ]; then
        py_cmd="venv/bin/python"
    fi

    if ! command -v python3 &> /dev/null && [ ! -f "venv/bin/python" ]; then
        error "未找到 python3，请先安装 Python 3.10+"
        exit 1
    fi

    local version=$($py_cmd -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')
    local major=$(echo $version | cut -d. -f1)
    local minor=$(echo $version | cut -d. -f2)

    if [ "$major" -lt 3 ] || { [ "$major" -eq 3 ] && [ "$minor" -lt 10 ]; }; then
        error "Python 版本过低 ($version)，需要 3.10+"
        exit 1
    fi

    success "Python 版本: $version ✓"
}

# 检查 .env 文件
check_env() {
    if [ ! -f ".env" ]; then
        warn ".env 文件不存在"
        echo -n "是否从模板创建 .env 文件？[y/N] "
        read -r response
        if [[ "$response" =~ ^[Yy]$ ]]; then
            cp .env.example .env
            success "已创建 .env 文件，请编辑填入你的配置"
            info "nano .env  或  vim .env"
            exit 0
        else
            error "需要 .env 文件才能运行"
            exit 1
        fi
    fi
    success ".env 文件存在 ✓"
}

# 检查依赖
check_deps() {
    info "检查 Python 依赖..."
    local py_cmd="python3"
    if [ -d "venv" ]; then
        py_cmd="venv/bin/python"
    fi

    if ! $py_cmd -c "import playwright" 2>/dev/null; then
        warn "Playwright 未安装"
        return 1
    fi
    if ! $py_cmd -c "import requests" 2>/dev/null; then
        warn "requests 未安装"
        return 1
    fi
    if ! $py_cmd -c "import aiohttp" 2>/dev/null; then
        warn "aiohttp 未安装"
        return 1
    fi
    if ! $py_cmd -c "import curl_cffi" 2>/dev/null; then
        warn "curl_cffi 未安装"
        return 1
    fi
    success "Python 依赖已安装 ✓"
    return 0
}

# 检查服务
check_services() {
    info "检查必要服务..."

    # 检查 BitBrowser API
    local bitbrowser_api="${BITBROWSER_API:-http://127.0.0.1:54345}"
    if curl -s -m 2 "$bitbrowser_api/browser/list" > /dev/null 2>&1; then
        success "BitBrowser API 在线 ✓"
    else
        warn "BitBrowser API 未响应 ($bitbrowser_api)"
        info "请确保比特浏览器客户端正在运行"
    fi

    # 检查 Clash API（可选）
    if [ -n "$CLASH_SECRET" ]; then
        local clash_api="${CLASH_API:-http://127.0.0.1:9097}"
        if curl -s -m 2 -H "Authorization: Bearer $CLASH_SECRET" "$clash_api/version" > /dev/null 2>&1; then
            success "Clash API 在线 ✓"
        else
            warn "Clash API 未响应 ($clash_api)"
            info "请确保 Clash Verge 已开启 External Controller"
        fi
    fi
}

# 初始化环境
setup() {
    info "开始初始化环境..."

    # 检查系统 Python
    if ! command -v python3 &> /dev/null; then
        error "未找到 python3，请先安装 Python 3.10+"
        exit 1
    fi

    # 创建虚拟环境
    if [ ! -d "venv" ]; then
        info "创建虚拟环境..."
        python3 -m venv venv
        success "虚拟环境已创建"
    else
        info "虚拟环境已存在，跳过创建"
    fi

    # 创建 .env
    check_env

    # 安装依赖
    info "安装 Python 依赖..."
    venv/bin/pip install -r requirements.txt

    # 安装 Playwright 浏览器
    info "安装 Playwright Chromium..."
    venv/bin/playwright install chromium

    # 创建必要目录
    mkdir -p cookies screenshots screenshots_outlook tri_register_logs _outlook_pool unlock_results outlook_accounts

    success "环境初始化完成！"
    info "请编辑 .env 文件填入你的配置，然后运行:"
    info "  ./run.sh check    # 检查环境"
    info "  ./run.sh full     # 开始注册"
}

# 环境检查
check() {
    info "=== 环境检查 ==="
    check_python
    check_env

    # 加载环境变量
    if [ -f ".env" ]; then
        export $(grep -v '^#' .env | xargs)
    fi

    check_deps || {
        warn "依赖未完整安装，运行以下命令安装:"
        echo "  ./run.sh setup    # 推荐：完整初始化"
        echo "  或手动："
        echo "  venv/bin/pip install -r requirements.txt"
        echo "  venv/bin/playwright install chromium"
    }

    check_services

    success "=== 环境检查完成 ==="
}

# 端到端注册
full_flow() {
    info "启动端到端注册流程..."
    python_cmd run_full_flow.py "$@"
}

# 仅三平台注册
platforms() {
    info "从邮箱池注册三平台..."
    python_cmd register_three_platforms.py --from-pool "$@"
}

# 仅养 Outlook 号
outlook_loop() {
    info "启动 Outlook 循环注册..."
    python_cmd outlook_reg_loop.py "$@"
}

# 独立 Outlook 注册（支持更多参数）
outlook_standalone() {
    info "启动 Outlook 独立注册..."
    python_cmd register_outlook_standalone.py "$@"
}

# 导出 cookie
export_accounts() {
    info "导出账号 cookie..."
    python_cmd export_accounts.py "$@"
}

# 解锁账号
unlock() {
    info "解锁被锁的 Outlook 账号..."
    python_cmd unlock_outlook.py "$@"
}

# 提取 token
extract_tokens() {
    info "提取 Outlook Graph refresh_token..."
    python_cmd extract_graph_tokens.py "$@"
}

# 启动取码服务
broker() {
    local port="${1:-8765}"
    info "启动共享取码服务 (端口 $port)..."
    python_cmd mailbox_broker.py --port "$port"
}

# Clash 管理
clash_cmd() {
    local subcmd="$1"
    shift

    case "$subcmd" in
        list)
            info "列出 Clash 节点..."
            python_cmd -m common.proxy_switch list "$@"
            ;;
        ping)
            info "测试 Clash 连通性..."
            python_cmd _clash_verge.py ping "$@"
            ;;
        *)
            error "未知的 clash 子命令: $subcmd"
            echo "可用命令: list, ping"
            exit 1
            ;;
    esac
}

# 主逻辑
main() {
    # 加载 .env（如果存在）
    if [ -f ".env" ]; then
        set -a
        source .env
        set +a
    fi

    local cmd="${1:-help}"
    shift || true

    case "$cmd" in
        setup)
            setup "$@"
            ;;
        check)
            check "$@"
            ;;
        full)
            full_flow "$@"
            ;;
        platforms)
            platforms "$@"
            ;;
        outlook)
            outlook_loop "$@"
            ;;
        outlook-standalone)
            outlook_standalone "$@"
            ;;
        export)
            export_accounts "$@"
            ;;
        unlock)
            unlock "$@"
            ;;
        tokens)
            extract_tokens "$@"
            ;;
        broker)
            broker "$@"
            ;;
        clash)
            clash_cmd "$@"
            ;;
        help|--help|-h)
            show_help
            ;;
        *)
            error "未知命令: $cmd"
            echo ""
            show_help
            exit 1
            ;;
    esac
}

# 执行主函数
main "$@"
