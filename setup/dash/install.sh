#!/bin/bash

echo "🔧 DashForge Dash Setup Starting..."

# Install core packages
sudo apt update
sudo apt install -y python3 python3-pip git

# Define path to shutdown script
SCRIPT_PATH="$HOME/DashForge/software/shared/system/shutdown_trigger.py"

# Confirm script exists
if [ ! -f "$SCRIPT_PATH" ]; then
  echo "❌ Shutdown script not found at $SCRIPT_PATH"
  exit 1
fi

# Set up systemd service
SERVICE_FILE="/etc/systemd/system/shutdown-listener.service"

sudo tee "$SERVICE_FILE" > /dev/null <<EOF
[Unit]
Description=DashForge GPIO Shutdown Listener
After=multi-user.target

[Service]
ExecStart=/usr/bin/python3 $SCRIPT_PATH
Restart=on-failure
User=pi

[Install]
WantedBy=multi-user.target
EOF

# Enable and start service
sudo systemctl daemon-reexec
sudo systemctl enable shutdown-listener
sudo systemctl restart shutdown-listener

echo "✅ DashForge Dash Pi setup complete and shutdown listener running."
