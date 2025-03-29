# 🧠 Software Modules

This folder contains the software that powers each major subsystem of DashForge. Each subfolder represents a dedicated role for a Raspberry Pi or shared code used across modules.

---

## 📁 Modules

| Folder | Description |
|--------|-------------|
| [`dash/`](./dash/README.md) | Reads OBDII data from the vehicle and displays it on-screen in a custom dashboard interface. Connects to an ELM327 Bluetooth adapter. |
| [`media/`](./media/README.md) | Handles in-car entertainment playback (videos/music) for rear-seat passengers. Outputs to the head unit via HDMI→RCA. |
| [`blackbox/`](./blackbox/README.md) | Logs video, GPS, accelerometer, and vehicle data to act as a crash/event recorder, similar to a black box. |
| [`shared/`](./shared/README.md) | Common libraries, config files, system services, and helper scripts used across all modules. |

---

## 🔧 Environment

- Primary language(s): Python, Shell, and potentially Node.js/C++
- Will use local `.env` or shared config files from `shared/`
- Optional use of `systemd` or `cron` to manage module startup

---

## 🧪 Development Notes

- Modules are designed to run headless or with basic UI output
- All services will be built to start automatically on boot
- Networking (MQTT or socket-based) may be introduced for module-to-module communication

---

Each module contains its own `README.md` with further details and setup instructions.
