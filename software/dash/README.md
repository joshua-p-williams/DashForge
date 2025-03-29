# 🧭 Dash Module

This module will handle real-time diagnostics and vehicle data display using the Raspberry Pi connected to the ELM327 Bluetooth adapter. It will read OBDII data via `python-OBD` or Node.js, and render a custom dashboard UI for display through the vehicle's head unit (via HDMI to RCA).

Includes:
- Bluetooth pairing and OBD connection
- Data polling loop
- Visual dashboard or API/UI
- System startup script or service
