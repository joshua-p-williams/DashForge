# 🚗 DashForge

DashForge is a modular Raspberry Pi-based platform for vehicle diagnostics, media playback, and embedded automotive experimentation. Inspired by airplane-style black box recorders and built for family road trips, weekend hacking, and future upgrades, this system integrates with your vehicle’s power, AV, and OBDII systems — with room to grow.

---

## 🎯 Project Goals

- 🔋 Safely power and shut down Raspberry Pi systems with ignition events
- 📊 Provide a real-time dashboard using OBDII and sensor data
- 🎬 Deliver in-car entertainment to rear-seat passengers via RCA
- 📹 Capture dash/rear cam footage and vehicle telemetry (black box style)
- 🌐 Build a flexible in-vehicle LAN for Pi-to-Pi and ESP32 communication
- 🧪 Support custom devices and displays via GPIO, UART, or MQTT

---

## 📁 Project Structure

| Folder | Purpose |
|--------|---------|
| [`docs/`](./docs/README.md) | Project plans, wiring documentation, system diagrams |
| [`software/`](./software/README.md) | Raspberry Pi code and supporting modules |
| [`notes/`](./notes/README.md) | Vision log, notes, scratchpad, etc.. |

---

## 📌 Status

- ✅ Phase 1: Power system + Pi installation
- ✅ Phase 2: Video routing and RCA switch setup
- ✅ Phase 3: OBDII connection and diagnostics display
- ⏳ Phase 4: Black box logger and media integration
- 🧪 Phase 5+: ESP32 sensors, dashcam, GPS, and OTA sync

---

> This project is built to evolve. As needs change, features will be added modularly without disrupting existing functionality.

---

## 🔧 Quick Start on Raspberry Pi

To set up a Raspberry Pi for DashForge, run this single command from the Pi's terminal:

```bash
bash <(curl -s https://raw.githubusercontent.com/joshua-p-williams/DashForge/main/setup/remote-install.sh)
```

This will:

- Clone (or update) the DashForge repository
- Detect or prompt for the Pi's role (e.g. `dash`, `media`, `blackbox`)
- Install required dependencies and services for that role
- Configure safe shutdown behavior using GPIO

After installation, the Pi will be ready for use in your vehicle.
