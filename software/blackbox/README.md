# 📦 Black Box Logger

This module functions like an airplane-style black box. It records dash cam footage (via Pi Camera), rear camera (optional), GPS location, OBDII data, G-sensor impact readings, and system events. The goal is to store and preserve logs of the last N minutes in case of a crash or sudden power-off.

Includes:
- Video recording (rotating buffer)
- GPS and G-sensor logging
- Event archiving on shutdown or impact
- Safe file sync or upload options
