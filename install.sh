#!/bin/bash
set -e

SKILL_NAME="cobo-design"
REPO="yinwang-gif/${SKILL_NAME}"
VERSION="latest"
INSTALL_DIR="${HOME}/.claude/skills/${SKILL_NAME}"
TMP_FILE="/tmp/${SKILL_NAME}.skill"

echo "📦 Installing ${SKILL_NAME} skill..."

# 检查 unzip
if ! command -v unzip &> /dev/null; then
  echo "❌ Error: unzip is required. Install it first."
  exit 1
fi

# 下载 .skill 文件
DOWNLOAD_URL="https://github.com/${REPO}/releases/latest/download/${SKILL_NAME}.skill"
echo "⬇️  Downloading from ${DOWNLOAD_URL}..."
curl -fsSL "$DOWNLOAD_URL" -o "$TMP_FILE"

# 安装到 ~/.claude/skills/
mkdir -p "${HOME}/.claude/skills/"
rm -rf "$INSTALL_DIR"
unzip -q "$TMP_FILE" -d "${HOME}/.claude/skills/"
rm "$TMP_FILE"

echo "✅ Installed to ${INSTALL_DIR}"
echo "🚀 Restart Claude Code to activate the skill."
