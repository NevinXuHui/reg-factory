<div align="center">

# 🏭 reg-factory

### Outlook · ChatGPT · Grok · Claude 全自动注册机

**自动批量注册 Outlook 邮箱 → 用它在 ChatGPT / Grok / Claude 上注册账号 → 导出可直登 cookie**

<p>
  <img src="https://img.shields.io/badge/Outlook-0078D4?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyByb2xlPSJpbWciIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBmaWxsPSJ3aGl0ZSIgZD0iTTcuODggMTIuMDRxMCAuNDUtLjExLjg3LS4xLjQxLS4zMy43NC0uMjIuMzMtLjU4LjUyLS4zNy4yLS44Ny4ydC0uODUtLjJxLS4zNS0uMjEtLjU3LS41NS0uMjItLjMzLS4zMy0uNzUtLjEtLjQyLS4xLS44NnQuMS0uODdxLjEtLjQzLjM0LS43Ni4yMi0uMzQuNTktLjU0LjM2LS4yLjg3LS4ydC44Ni4ycS4zNS4yMS41Ny41NS4yMi4zNC4zMS43Ny4xLjQzLjEuODh6TTI0IDEydjkuMzhxMCAuNDYtLjMzLjgtLjMzLjMyLS44LjMySDcuMTNxLS40NiAwLS44LS4zMy0uMzItLjMzLS4zMi0uOFYxOEgxcS0uNDEgMC0uNy0uMy0uMy0uMjktLjMtLjdWN3EwLS40MS4zLS43US41OCA2IDEgNmg2LjVWMi41NXEwLS40NC4zLS43NS4zLS4zLjc1LS4zaDEyLjlxLjQ0IDAgLjc1LjMuMy4zLjMuNzVWMTAuODVsMS4yNC43MmguMDFxLjEuMDcuMTguMTguMDcuMTIuMDcuMjV6bS02LTguMjV2M2gzdi0zem0wIDQuNXYzaDN2LTN6bTAgNC41djEuODNsMy4wNS0xLjgzem0tNS4yNS05djNoMy43NXYtM3ptMCA0LjV2M2gzLjc1di0zem0wIDQuNXYyLjAzbDIuNDEgMS41IDEuMzQtLjh2LTIuNzN6TTkgMy43NVY2aDJsLjEzLjAxLjEyLjA0di0yLjN6TTUuOTggMTUuOThxLjkgMCAxLjYtLjMuNy0uMzIgMS4xOS0uODYuNDgtLjU1LjczLTEuMjguMjUtLjc0LjI1LTEuNjEgMC0uODMtLjI1LTEuNTUtLjI0LS43MS0uNzEtMS4yNHQtMS4xNS0uODNxLS42OC0uMy0xLjU1LS4zLS45MiAwLTEuNjQuMy0uNzEuMy0xLjIuODUtLjUuNTQtLjc1IDEuMy0uMjUuNzQtLjI1IDEuNjMgMCAuODQuMjUgMS41NS4yNC43MS43IDEuMjMuNDcuNTIgMS4xNi44Mi42OS4zIDEuNjIuM3pNNy41IDIxaDEyLjM5TDEyIDE2LjE4VjE3cTAgLjQxLS4zLjctLjI5LjMtLjcuM0g3LjV6bTE1LS4xM3YtNy40OWwtNi4zIDMuNzl6Ii8+PC9zdmc+Cg==&logoColor=white" alt="Outlook" height="34" />
  &nbsp;
  <img src="https://img.shields.io/badge/ChatGPT-10A37F?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyByb2xlPSJpbWciIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBmaWxsPSJ3aGl0ZSIgZD0iTTIyLjI4MTkgOS44MjExYTUuOTg0NyA1Ljk4NDcgMCAwIDAtLjUxNTctNC45MTA4IDYuMDQ2MiA2LjA0NjIgMCAwIDAtNi41MDk4LTIuOUE2LjA2NTEgNi4wNjUxIDAgMCAwIDQuOTgwNyA0LjE4MThhNS45ODQ3IDUuOTg0NyAwIDAgMC0zLjk5NzcgMi45IDYuMDQ2MiA2LjA0NjIgMCAwIDAgLjc0MjcgNy4wOTY2IDUuOTggNS45OCAwIDAgMCAuNTExIDQuOTEwNyA2LjA1MSA2LjA1MSAwIDAgMCA2LjUxNDYgMi45MDAxQTUuOTg0NyA1Ljk4NDcgMCAwIDAgMTMuMjU5OSAyNGE2LjA1NTcgNi4wNTU3IDAgMCAwIDUuNzcxOC00LjIwNTggNS45ODk0IDUuOTg5NCAwIDAgMCAzLjk5NzctMi45MDAxIDYuMDU1NyA2LjA1NTcgMCAwIDAtLjc0NzUtNy4wNzI5em0tOS4wMjIgMTIuNjA4MWE0LjQ3NTUgNC40NzU1IDAgMCAxLTIuODc2NC0xLjA0MDhsLjE0MTktLjA4MDQgNC43NzgzLTIuNzU4MmEuNzk0OC43OTQ4IDAgMCAwIC4zOTI3LS42ODEzdi02LjczNjlsMi4wMiAxLjE2ODZhLjA3MS4wNzEgMCAwIDEgLjAzOC4wNTJ2NS41ODI2YTQuNTA0IDQuNTA0IDAgMCAxLTQuNDk0NSA0LjQ5NDR6bS05LjY2MDctNC4xMjU0YTQuNDcwOCA0LjQ3MDggMCAwIDEtLjUzNDYtMy4wMTM3bC4xNDIuMDg1MiA0Ljc4MyAyLjc1ODJhLjc3MTIuNzcxMiAwIDAgMCAuNzgwNiAwbDUuODQyOC0zLjM2ODV2Mi4zMzI0YS4wODA0LjA4MDQgMCAwIDEtLjAzMzIuMDYxNUw5Ljc0IDE5Ljk1MDJhNC40OTkyIDQuNDk5MiAwIDAgMS02LjE0MDgtMS42NDY0ek0yLjM0MDggNy44OTU2YTQuNDg1IDQuNDg1IDAgMCAxIDIuMzY1NS0xLjk3MjhWMTEuNmEuNzY2NC43NjY0IDAgMCAwIC4zODc5LjY3NjVsNS44MTQ0IDMuMzU0My0yLjAyMDEgMS4xNjg1YS4wNzU3LjA3NTcgMCAwIDEtLjA3MSAwbC00LjgzMDMtMi43ODY1QTQuNTA0IDQuNTA0IDAgMCAxIDIuMzQwOCA3Ljg3MnptMTYuNTk2MyAzLjg1NThMMTMuMTAzOCA4LjM2NCAxNS4xMTkyIDcuMmEuMDc1Ny4wNzU3IDAgMCAxIC4wNzEgMGw0LjgzMDMgMi43OTEzYTQuNDk0NCA0LjQ5NDQgMCAwIDEtLjY3NjUgOC4xMDQydi01LjY3NzJhLjc5Ljc5IDAgMCAwLS40MDctLjY2N3ptMi4wMTA3LTMuMDIzMWwtLjE0Mi0uMDg1Mi00Ljc3MzUtMi43ODE4YS43NzU5Ljc3NTkgMCAwIDAtLjc4NTQgMEw5LjQwOSA5LjIyOTdWNi44OTc0YS4wNjYyLjA2NjIgMCAwIDEgLjAyODQtLjA2MTVsNC44MzAzLTIuNzg2NmE0LjQ5OTIgNC40OTkyIDAgMCAxIDYuNjgwMiA0LjY2ek04LjMwNjUgMTIuODYzbC0yLjAyLTEuMTYzOGEuMDgwNC4wODA0IDAgMCAxLS4wMzgtLjA1NjdWNi4wNzQyYTQuNDk5MiA0LjQ5OTIgMCAwIDEgNy4zNzU3LTMuNDUzN2wtLjE0Mi4wODA1TDguNzA0IDUuNDU5YS43OTQ4Ljc5NDggMCAwIDAtLjM5MjcuNjgxM3ptMS4wOTc2LTIuMzY1NGwyLjYwMi0xLjQ5OTggMi42MDY5IDEuNDk5OHYyLjk5OTRsLTIuNTk3NCAxLjQ5OTctMi42MDY3LTEuNDk5N1oiLz48L3N2Zz4K&logoColor=white" alt="ChatGPT" height="34" />
  &nbsp;
  <img src="https://img.shields.io/badge/Grok-000000?style=for-the-badge&logo=x&logoColor=white" alt="Grok" height="34" />
  &nbsp;
  <img src="https://img.shields.io/badge/Claude-D97757?style=for-the-badge&logo=anthropic&logoColor=white" alt="Claude" height="34" />
</p>

<p>
  <img src="https://img.shields.io/badge/QQ%E7%BE%A4-1048143135-12B7F5?style=for-the-badge&logo=qq&logoColor=white" alt="QQ 交流群 1048143135" />
</p>

<p>
  <img src="https://img.shields.io/badge/Python-3.10+-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python" />
  <img src="https://img.shields.io/badge/Playwright-自动化-2EAD33?style=flat-square" alt="Playwright" />
  <img src="https://img.shields.io/badge/BitBrowser-指纹隔离-5A4FCF?style=flat-square" alt="BitBrowser" />
  <img src="https://img.shields.io/badge/Clash%20Verge-节点切换-1F8FFF?style=flat-square" alt="Clash Verge" />
  <img src="https://img.shields.io/badge/license-educational-lightgrey?style=flat-square" alt="license" />
</p>

</div>

---

**reg-factory** 是一套全自动注册流水线：先自注册 **Outlook** 邮箱，再用同一邮箱在
**ChatGPT / Grok / Claude** 上批量注册账号，并导出可直登的 cookie。底层用
**比特浏览器(BitBrowser)** 做指纹隔离、**Clash Verge** 做节点切换绕区域封锁与 Cloudflare 风控、
接码/打码平台过手机号与验证码。

> ⚠️ 仅供学习与授权测试使用。所有密钥通过环境变量提供，仓库内不含任何明文凭据。

---

## 1. 前置条件

### ① 比特浏览器 BitBrowser
- 安装并**启动**比特浏览器客户端，确保本地 API 在线（默认 `http://127.0.0.1:54345`）。
- 客户端要保持运行——脚本通过该 API 创建/打开/关闭浏览器窗口。

### ② Clash Verge（开启 API 权限）
- 安装 Clash Verge 并导入你的机场订阅，选一个节点并开启「系统代理 / Tun 模式」。
  - 注册 Grok 需要能过 Cloudflare 的干净节点；脚本会在订阅节点里自动逐个试探可用节点。
- **设置 → External Controller**：开启外部控制器 API，并**设置一个 secret**。
  - 记下控制面端口（Clash Verge 默认 `9097`，mihomo 内核默认 `9090`）。
  - 记下混合代理端口（mixed-port，默认 `7897`）。
- 把 secret 填进 `.env` 的 `CLASH_SECRET`（见下）。

### ③ Python
- Python 3.10+。

---

## 2. 安装

```bash
pip install -r requirements.txt
playwright install chromium
```

---

## 3. 配置（密钥走环境变量）

复制模板并填写：

```bash
cp .env.example .env
```

`.env` 已被 `.gitignore` 忽略。真实的进程环境变量优先于 `.env`。

| 环境变量 | 说明 | 必填 |
|---|---|---|
| `CLASH_SECRET` | Clash Verge External Controller 的 secret | 走节点时必填 |
| `CLASH_API` | Clash 控制面地址（默认 `http://127.0.0.1:9097`） | 否 |
| `CLASH_PROXY` | Clash 混合端口代理（默认 `http://127.0.0.1:7897`） | 否 |
| `CLASH_GROUP` | 切换出口的代理组名（默认 `GLOBAL`） | 否 |
| `BITBROWSER_API` | 比特浏览器本地 API（默认 `http://127.0.0.1:54345`） | 否 |
| `SMS_TOKEN` | 接码平台 firefox.fun 的 token | 需手机号时必填 |
| `HERO_SMS_API_KEY` | 备用接码 hero-sms.com 的 api_key | 否 |
| `CAPSOLVER_API_KEY` | CapSolver 打码 key | 按需 |
| `EZCAPTCHA_API_KEY` | EZ-Captcha 打码 key | 按需 |
| `OUTLOOK_CARD` | 闪客云邮箱卡密（接口批量取号用） | 用接口取号时填 |
| `OUTLOOK_PROXIES` | Outlook 自注册住宅代理池，`user:pass@host:port`，换行/逗号分隔 | 否 |
| `MAIL_*` | 备用域名邮箱（一般用不到） | 否 |

---

## 4. 运行

### 🚀 快速开始（推荐使用 run.sh）

项目提供了统一的命令行工具 `run.sh`，自动管理虚拟环境，简化所有操作。

#### 首次使用

```bash
# 初始化环境（创建虚拟环境、安装依赖）
./run.sh setup

# 检查环境是否就绪
./run.sh check
```

#### 常用命令

```bash
# 查看所有命令和帮助
./run.sh help

# Outlook 注册（两种模式）
./run.sh outlook --count 10 --region de-de              # BitBrowser 模式（循环养号）
./run.sh outlook-standalone --count 10 --region de-de   # 独立模式（批量注册）

# 三平台注册
./run.sh platforms                                       # 从邮箱池注册

# 导出 cookie
./run.sh export claude chatgpt grok                      # 导出指定平台

# 提取 Graph tokens
./run.sh tokens                                          # 自动扫描并提取

# 解锁被锁账号
./run.sh unlock                                          # 批量解锁

# Clash 节点管理
./run.sh clash list                                      # 列出节点
./run.sh clash ping                                      # 测试连通性
```

---

### 📋 详细使用说明

#### Outlook 注册：两种模式对比

| 特性 | `outlook` | `outlook-standalone` |
|------|-----------|----------------------|
| **依赖** | 需要 BitBrowser | 可选 BitBrowser |
| **代理方式** | Clash TUN/系统代理 | 支持多种方式 |
| **运行模式** | 循环注册（长期运行） | 批量注册（一次性） |
| **配额限制** | 受 BitBrowser 免费版限制 | `protocol`/`headless` 模式无限制 |
| **注册速度** | 中等 | `protocol` 模式最快 |
| **适用场景** | 日常养号，稳定注册 | 批量注册，绕过配额限制 |

##### 1️⃣ outlook - BitBrowser 模式（循环养号）

```bash
# 注册 10 个美国 outlook.com 邮箱（默认不轮换代理）
./run.sh outlook --count 10

# 注册 10 个号并启用代理轮换（每次注册前换节点）
./run.sh outlook --count 10 --rotate-proxy

# 注册德国 outlook.de 邮箱
./run.sh outlook --count 10 --region de-de

# 注册德国邮箱并启用代理轮换
./run.sh outlook --count 10 --region de-de --rotate-proxy

# 无限循环注册法国邮箱
./run.sh outlook --region fr-fr
```

**代理轮换说明：**
- 默认行为：使用当前在 Clash 中选择的代理节点（不自动轮换）
- 使用 `--rotate-proxy` 启用：每次注册前自动轮换到下一个节点（round-robin 策略）
- 轮换逻辑：先切换外层组节点，如 IP 未改变则递归切换嵌套组内节点

**注意：** 免费版 BitBrowser 每天有创建窗口配额限制。

##### 2️⃣ outlook-standalone - 独立模式（批量注册）

支持多种运行模式，不完全依赖 BitBrowser。

**运行模式：**
- `auto`（默认）：protocol → headless → browser 自动回退
- `protocol`：纯 HTTP 模式，最快（~50KB/账号）
- `headless`：无头浏览器，节省 70% 流量
- `browser`：完整 BitBrowser 模式

**代理配置：**
```bash
# 使用 .env 中的 OUTLOOK_PROXIES 住宅代理
./run.sh outlook-standalone --count 10 --region de-de

# 使用自定义代理文件
./run.sh outlook-standalone --count 10 --proxy-file proxies.txt

# 不使用代理（Clash TUN）
./run.sh outlook-standalone --count 5 --no-proxy
```

**指定运行模式：**
```bash
# 纯 HTTP 模式（最快，不需要 BitBrowser）
./run.sh outlook-standalone --count 20 --mode protocol --region de-de

# 无头浏览器模式（不需要 BitBrowser）
./run.sh outlook-standalone --count 10 --mode headless

# 完整浏览器模式（需要 BitBrowser）
./run.sh outlook-standalone --count 5 --mode browser
```

**区域选择：**

| 地区 | 代码 | 邮箱后缀 | 地区 | 代码 | 邮箱后缀 |
|------|------|---------|------|------|---------|
| 美国 | `en-us` | @outlook.com | 德国 | `de-de` | @outlook.de |
| 法国 | `fr-fr` | @outlook.fr | 西班牙 | `es-es` | @outlook.es |
| 意大利 | `it-it` | @outlook.it | 巴西 | `pt-br` | @outlook.com.br |
| 日本 | `ja-jp` | @outlook.jp | 韩国 | `ko-kr` | @outlook.kr |

---

### 💡 推荐使用场景

```bash
# 场景 1：BitBrowser 配额用完了
./run.sh outlook-standalone --count 20 --mode protocol --region de-de

# 场景 2：有住宅代理（OUTLOOK_PROXIES）
./run.sh outlook-standalone --count 10 --region de-de

# 场景 3：通过 Clash，不用 BitBrowser
./run.sh outlook-standalone --count 10 --mode headless --no-proxy

# 场景 4：日常养号（长期运行）
./run.sh outlook --count 10 --region de-de
```

---

### 🔧 传统方式（不使用 run.sh）

需要手动管理虚拟环境：

```bash
# 激活虚拟环境
source venv/bin/activate

# 各种操作...
python outlook_reg_loop.py --count 20 --region de-de
python export_accounts.py claude chatgpt
python extract_graph_tokens.py

# 退出虚拟环境
deactivate
```

详细命令请参考原有文档或运行 `venv/bin/python <script> --help`。
./run.sh outlook --count 10

# 注册德国 outlook.de 邮箱
./run.sh outlook --count 10 --region de-de

# 无限循环注册法国邮箱
./run.sh outlook --region fr-fr
```

**注意：** 免费版 BitBrowser 每天有创建窗口配额限制。

##### 2️⃣ outlook-standalone - 独立模式（批量注册）

支持多种运行模式，不完全依赖 BitBrowser，可绕过配额限制。

**运行模式：**
- `auto`（默认）：protocol → headless → browser 自动回退
- `protocol`：纯 HTTP 模式，最快，流量最小（~50KB/账号）
- `headless`：无头浏览器模式，节省 70% 流量
- `browser`：完整 BitBrowser 模式（需配额）

**代理配置：**
```bash
# 使用 .env 中配置的 OUTLOOK_PROXIES 住宅代理
./run.sh outlook-standalone --count 10 --region de-de

# 使用自定义代理文件
./run.sh outlook-standalone --count 10 --proxy-file proxies.txt --region es-es

# 不使用代理（通过 Clash TUN）
./run.sh outlook-standalone --count 5 --no-proxy --region de-de
```

**指定运行模式：**
```bash
# 纯 HTTP 模式（最快，无浏览器，不需要 BitBrowser）
./run.sh outlook-standalone --count 20 --mode protocol --region de-de

# 无头浏览器模式（节省流量，不需要 BitBrowser）
./run.sh outlook-standalone --count 10 --mode headless --region fr-fr

# 完整浏览器模式（需要 BitBrowser）
./run.sh outlook-standalone --count 5 --mode browser --region de-de
```

**区域选择（`--region`）：**

| 地区代码 | 国家/地区 | 邮箱后缀 |
|---------|----------|---------|
| `en-us` | 美国（默认） | @outlook.com |
| `de-de` | 德国 | @outlook.de |
| `fr-fr` | 法国 | @outlook.fr |
| `es-es` | 西班牙 | @outlook.es |
| `it-it` | 意大利 | @outlook.it |
| `pt-br` | 巴西 | @outlook.com.br |
| `ja-jp` | 日本 | @outlook.jp |
| `ko-kr` | 韩国 | @outlook.kr |

---

### 💡 推荐使用场景

#### 场景 1：BitBrowser 配额用完了
```bash
# 使用 protocol 模式，不需要 BitBrowser
./run.sh outlook-standalone --count 20 --mode protocol --region de-de
```

#### 场景 2：有住宅代理（`OUTLOOK_PROXIES`）
```bash
# 在 .env 中配置 OUTLOOK_PROXIES，然后运行
./run.sh outlook-standalone --count 10 --region de-de
```

#### 场景 3：通过 Clash 注册，不想用 BitBrowser
```bash
# 使用 headless 模式 + Clash TUN
./run.sh outlook-standalone --count 10 --mode headless --no-proxy --region de-de
```

#### 场景 4：日常养号（长期运行）
```bash
# 使用 outlook 命令（需要 BitBrowser）
./run.sh outlook --count 10 --region de-de
```

---

### 🔧 传统方式（不推荐）

如果不使用 `run.sh`，需要手动管理虚拟环境：

#### 端到端（注册邮箱 → 三平台注册）
```bash
# 激活虚拟环境
source venv/bin/activate

python run_full_flow.py                       # 注册 1 个 outlook 号后在 claude 上注册
python run_full_flow.py --platforms claude chatgpt grok
python run_full_flow.py --skip-email --email a@outlook.com --password xxx
python run_full_flow.py --dry-run             # 只打印将执行的命令

# 退出虚拟环境
deactivate
```
> 自动注入 `HTTP(S)_PROXY` 与 `CLASH_API/SECRET/GROUP` 给子进程。

#### 仅三平台注册（已有邮箱池 emails.txt）
```bash
source venv/bin/activate

python register_three_platforms.py --from-pool
python register_three_platforms.py --email a@outlook.com --password xxx --token <refresh>
python register_three_platforms.py --loop     # 常驻消费池

deactivate
```
并行流水线模式下建议先起共享取码服务（避免三窗口并发登录同一邮箱）：
```bash
python mailbox_broker.py --port 8765
```

#### 仅养号（持续自注册 Outlook，写入 _outlook_pool/ 与 emails.txt）
```bash
source venv/bin/activate

python outlook_reg_loop.py                     # 循环
python outlook_reg_loop.py --count 20          # 注册 20 个后退出
python outlook_reg_loop.py --region de-de      # 注册德国邮箱

deactivate
```

### 导出已注册账号 cookie（供直登扩展使用）
```bash
python export_accounts.py                      # 全部平台
python export_accounts.py claude chatgpt       # 指定平台
```

### 批量解锁被锁的 Outlook 账号
BitBrowser + Playwright,复用注册同款 PX 按压验证逻辑;按结果分类输出到
`unlock_results/`(`unlocked_*` 成功 / `needs_phone_*` 需短信 / `failed_*` 失败)。
打码 key 走环境变量 `EZCAPTCHA_API_KEY`。
```bash
python unlock_outlook.py                                       # 自动找最新的 locked 文件
python unlock_outlook.py --input outlook_accounts/accounts.txt # 指定账号文件
python unlock_outlook.py --input emails_locked.txt --concurrency 2
python unlock_outlook.py --input accounts.txt --proxy-file proxies.txt
```
> 输入每行 `email----password`（可带额外字段）。解锁后再跑下面的 token 提取。

### 提取 Outlook 的 Graph OAuth refresh_token
纯 `requests` 模拟 OAuth2 授权码流程（免浏览器），用账号密码换取
Microsoft Graph 的 `refresh_token`，输出 `email----password----refresh_token----client_id`，
结果存到 `outlook_accounts/graph_tokens_<时间戳>.txt`。
```bash
python extract_graph_tokens.py                                   # 自动扫 unlock_results/，跳过已提取
python extract_graph_tokens.py outlook_accounts/accounts.txt     # 指定账号文件
python extract_graph_tokens.py --email a@outlook.com --password xxx
python extract_graph_tokens.py accounts.txt --concurrency 10     # 并发数(默认 5)
```
> 走系统代理（Clash），避免 `account.live.com` 限流；账号文件每行 `email----password----...`。

### Clash 节点自检
```bash
python -m common.proxy_switch list             # 列出 GLOBAL 组节点
python _clash_verge.py ping                    # 控制面连通性
```

---

## 5. 目录约定

| 路径 | 内容 |
|---|---|
| `emails.txt` | 邮箱池（`email----password----token----clientid`），运行时生成 |
| `cookies/` | 注册成功导出的 cookie（`full_*.json` / `sk_*.txt`） |
| `_outlook_pool/` | outlook_reg_loop 产出的待用号 |
| `tri_register_logs/` | 三平台注册日志 |
| `screenshots*/` | 调试截图 |

以上运行期数据均被 `.gitignore` 忽略，发布包内为空。

---

## 6. 常见问题

- **claude 报 app-unavailable-in-region**：claude.com 对本机 IP 区域封锁，需开 Clash 走干净
  节点（`run_full_flow` / `register.py` 的 `--node auto`）。
- **grok 全页 Cloudflare 拦截**：必须切 Clash 节点；`register_grok.py` 会用 curl_cffi 指纹
  逐个试节点找能过的。
- **三窗口登录同一 outlook 报并发登录**：用 `mailbox_broker.py` 共享取码（每号只登一次）。
- **缺 secret 连不上 Clash 控制面**：确认 External Controller 已开 API 且 `CLASH_SECRET` 正确。

---

## 7. 交流 / 支持

- 💬 **QQ 交流群：`1048143135`**（使用问题、避坑、更新通知）

---

## 🔗 Friend Links

- 🐧 [**LinuxDO**](https://linux.do) — A community for tech enthusiasts

---

## ☕ 打赏

<div align="center">

<img src="assets/reward_qr.jpg" alt="打赏码" width="280" />

**谢谢老板打赏，您的打赏是我更新的动力！！！**

</div>
