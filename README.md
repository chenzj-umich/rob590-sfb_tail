# 🤖 ROB590 — Force/Torque Sensor Integration Log

**Project:** Bota GenA T60 Sensor Interface  
**Platform:** Raspberry Pi 4 + Miniforge (Conda)  
**Author:** Arcad  
**Last Updated:** 2025-10-16  

---

## 📘 Overview

This project integrates a **Bota Systems GenA T60** force/torque sensor with a **Raspberry Pi 4**, providing real-time force and torque readings via serial or Ethernet communication.

The goals of this project are:
- Establish communication with the GenA T60 sensor.
- Stream 6-axis force/torque data to Python and ROS2.
- Calibrate, filter, and visualize the data.
- Integrate sensor readings into a PR2 base controller.

---

## 🧾 Project Log

### 20251016
- Version: v1.1
  - [Changed] Update the config with raspberry pi local port.
  - [Done] Tested communication and output of ftsensor on raspberry pi.
  - [Todo] Write a simple calibration script to calibrate the cuttoff of force, torque, etc.

### 20251016
- Version: v1.0
  - [Done] Successfully communicate with the ftsensor via USB series online and offline.
  - [Done] Print the force output for 10 seconds.