#!/usr/bin/env bash
set -euo pipefail

# This source mirror is intentionally pinned. Never fetch releases from upstream.
cat >&2 <<'EOF'
CyberStrikeAI 源码保护模式：自动升级已禁用。

这个脚本不会下载上游版本，也不会修改源码、配置或数据。
如需更新，请先复制源码目录，在副本中审查、测试并手动合并变更。
安全保存版本：protected-source-2026-09-15
EOF
exit 2
