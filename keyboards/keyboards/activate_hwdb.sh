#!/usr/bin/env bash
HWDB_DIR="/etc/udev/hwdb.d/"
sudo mkdir -p "${HWDB_DIR}"
sudo cp "$1" "${HWDB_DIR}"
sudo systemd-hwdb update
sudo udevadm trigger

