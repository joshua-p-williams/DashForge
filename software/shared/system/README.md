# 🧩 System Services

This folder contains system-level scripts and services shared across DashForge modules. These are intended to run automatically at boot via `systemd`.

---

## 🔌 `shutdown_trigger.py`

This script listens on GPIO17 for a falling signal (e.g. vehicle accessory power removed) and initiates a safe shutdown of the Raspberry Pi.

### Behavior:
- Monitors GPIO17 using `RPi.GPIO`
- When GPIO17 goes LOW, it runs `sudo shutdown -h now`
- Cleans up GPIO state gracefully

### Usage:
This script is registered as a service by the DashForge setup script:
```bash
sudo systemctl enable shutdown-listener
sudo systemctl start shutdown-listener
```

Path:  
`software/shared/system/shutdown_trigger.py`

---

## ⚙️ `shutdown-listener.service`

This is the `systemd` unit file that manages the shutdown trigger script as a background service.

- Automatically installed by setup scripts
- Tracked in version control to ensure consistency across environments
- Can be manually installed if needed:
  ```bash
  sudo cp software/shared/system/shutdown-listener.service /etc/systemd/system/
  sudo systemctl daemon-reexec
  sudo systemctl enable shutdown-listener
  sudo systemctl start shutdown-listener
  ```

Path:  
`software/shared/system/shutdown-listener.service`

---

## 📁 Future Additions

This folder may include:
- Watchdog or heartbeat monitors
- Network listeners or MQTT bridges
- Hardware diagnostics or fault recovery helpers

---

## 👣 Installed By

- `setup/dash/install.sh`
- (Later) `setup/media/install.sh`, `setup/blackbox/install.sh`
