#!/usr/bin/env python3
"""
测试地区选择功能
"""
import sys
sys.path.insert(0, '.')

from register_outlook_standalone import REGION_MAPPING, generate_email_password

print("=" * 60)
print("测试地区邮箱生成功能")
print("=" * 60)

test_regions = ["en-us", "de-de", "fr-fr", "es-es", "it-it", "pt-br", "ja-jp", "ko-kr"]

for region in test_regions:
    email, password, prefix, domain = generate_email_password(region)
    region_info = REGION_MAPPING.get(region.lower(), REGION_MAPPING["en-us"])
    mkt = region_info["mkt"]
    signup_url = f"https://signup.live.com/signup?mkt={mkt}&lic=1"

    print(f"\n地区: {region}")
    print(f"  域名: @{domain}")
    print(f"  邮箱: {email}")
    print(f"  注册URL: {signup_url}")

print("\n" + "=" * 60)
print("✓ 地区选择功能测试完成")
print("=" * 60)
