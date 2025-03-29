#!/bin/bash

REPO_URL="https://github.com/joshua-p-williams/DashForge.git"
TARGET_DIR="$HOME/DashForge"

echo "🚗 DashForge Remote Installer"

if [ ! -d "$TARGET_DIR" ]; then
  echo "📥 Cloning DashForge for the first time..."
  git clone "$REPO_URL" "$TARGET_DIR"
else
  echo "🔄 Updating DashForge to the latest version..."
  cd "$TARGET_DIR" || exit 1
  git pull
fi

# Make sure bootstrap is executable
chmod +x "$TARGET_DIR/setup/bootstrap.sh"

# Launch the smart, role-aware installer
cd "$TARGET_DIR/setup" || exit 1
./bootstrap.sh
