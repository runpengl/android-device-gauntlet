#!/bin/bash

echo "=== [`date +%Y-%m-%d_%H:%M:%S`] Rebooting bootloader for device[$2] $1 ===" |& tee -a device_root.log
adb -s $1 reboot bootloader
