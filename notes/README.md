# DashForge Notes 🛠️🧠

Welcome to the DashForge vision log. This file tracks all ideas, goals, and ongoing thinking for this project. Use this as your central planning board.

---

## 🧭 Overview

DashForge is a Raspberry Pi-based in-vehicle modular platform for diagnostics, automation, and entertainment. It connects with the vehicle's systems (OBDII, power, video) and enables extensible features for real-time data, media, and sensors.

---

## 🚗 Core Goals (Phase 1)

### ✅ 1. Raspberry Pi Safe Power Integration
- Use XY-J02 delay-off relay with constant + accessory power
- Clean shutdown when ignition turns off
- Rocker switch for long-term storage

### ✅ 2. OBDII Diagnostics & Dashboard
- ELM327 + Python/Node/Pi GUI
- Display engine data via HDMI → RCA → head unit
- Interactive dashboard app (static or web-based)

### ✅ 3. Rear Seat Entertainment System
- Play video from Pi to head unit and/or other screens
- Kodi or media script
- Optional control UI for kids/tablets

---

## 🛠️ Expansion Ideas (Phase 2+)

### ⚙️ Black Box Recorder
- Dash cam (PiCam) + rear cam
- GPS logging, G-sensor, video archiving

### 📡 Networked Node Devices
- ESP32-based rear displays
- Serial/MQTT data displays
- Alert/diagnostic message popups

### 🔔 Alerts & Notifications
- Custom alerts (temp, engine load, tire sensors)
- LED indicators or screen popups

### 📡 Wireless Control & Remote Access
- Pi as Access Point
- Control/monitor from mobile device

---

## 💡 Random Ideas
- Vehicle boot animation / startup sound
- Steering wheel button integration
- Battery voltage monitor and cutoff logging
- Climate control overlay via relay/digital input
- Ambient cabin lighting control via Pi GPIO

---

## 🗂️ To Do
- [ ] Wire and test XY-J02 + Pi power setup
- [ ] Start Python or Node dashboard
- [ ] Configure RCA switch for media/dash toggle
- [ ] Wire up GPIO shutdown logic
- [ ] Load test entertainment video playback
- [ ] Begin logging OBDII to local storage

---

Keep adding here as ideas grow. This is your digital garage.
