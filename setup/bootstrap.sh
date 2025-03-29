#!/bin/bash

CONFIG_PATH="$HOME/.dashforge/config.json"
DASHFORGE_VERSION="1.0.0"

function read_config_value() {
  local key="$1"
  grep -oP "\"$key\":\s*\"\K[^\"]+" "$CONFIG_PATH" 2>/dev/null
}

function write_config() {
  local role="$1"
  local version="$2"
  mkdir -p "$(dirname "$CONFIG_PATH")"
  echo "{\"role\": \"$role\", \"version\": \"$version\"}" > "$CONFIG_PATH"
}

function prompt_for_role() {
  echo "Which Raspberry Pi role are you setting up?"
  echo "  1) dash     - OBDII diagnostics + dashboard"
  echo "  2) media    - Rear-seat media playback"
  echo "  3) blackbox - Black box logger (dashcam, GPS, etc.)"
  echo ""
  read -p "Enter selection (1/2/3): " choice
  case "$choice" in
    1) echo "dash" ;;
    2) echo "media" ;;
    3) echo "blackbox" ;;
    *) echo ""; return 1 ;;
  esac
}

function run_role_install() {
  local role="$1"
  local script="setup/$role/install.sh"
  if [ -f "$script" ]; then
    echo "🔧 Running setup for '$role'..."
    bash "$script"
  else
    echo "❌ Installer script not found for role '$role'."
    exit 1
  fi
}

# Entry point
echo "🚀 DashForge Bootstrap (v$DASHFORGE_VERSION)"
echo "---------------------------------------------"

ROLE=$(read_config_value "role")
CURRENT_VERSION=$(read_config_value "version")

if [ -n "$ROLE" ]; then
  echo "🔍 Detected existing role: '$ROLE'"
  echo "📝 Installed version: ${CURRENT_VERSION:-unknown}"
  echo "What would you like to do?"
  echo "  1) Upgrade to v$DASHFORGE_VERSION"
  echo "  2) Reset and choose a new role"
  echo ""
  read -p "Enter selection (1/2): " action
  if [ "$action" == "1" ]; then
    write_config "$ROLE" "$DASHFORGE_VERSION"
    run_role_install "$ROLE"
  elif [ "$action" == "2" ]; then
    echo "🗑️ Removing config and resetting setup..."
    rm -f "$CONFIG_PATH"
    bash "$0"
    exit
  else
    echo "❌ Invalid selection. Exiting."
    exit 1
  fi
else
  ROLE=$(prompt_for_role)
  if [ -z "$ROLE" ]; then
    echo "❌ Invalid role selection. Exiting."
    exit 1
  fi
  echo "✅ Saving role: $ROLE with version: $DASHFORGE_VERSION"
  write_config "$ROLE" "$DASHFORGE_VERSION"
  run_role_install "$ROLE"
fi
