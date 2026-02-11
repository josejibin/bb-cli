#!/bin/bash
set -e

INSTALL_DIR="/usr/local/bin"
REPO_URL="https://raw.githubusercontent.com/josejibin/bb-cli/main/bb-cli"

echo "Installing bb-cli..."
sudo curl -fsSL "$REPO_URL" -o "$INSTALL_DIR/bb-cli"
sudo chmod +x "$INSTALL_DIR/bb-cli"
echo "✅ bb-cli installed!"
echo ""
echo "Run 'bb-cli configure' to set up your token."
