#!/bin/bash

echo "=== [`date +%Y-%m-%d_%H:%M:%S`] Rebooting bootloader for device[$2] $1 ===" |& tee -a device_root.log
adb -s $1 reboot bootloader

echo "*** Unlocking device[$2] $1 ***" |& tee -a device_root.log
sudo fastboot -s $1 oem unlock
sudo fastboot -s $1 oem unlock

sudo fastboot -s $1 flash boot $3

echo "=== [`date +%Y-%m-%d_%H:%M:%S`] Finished rooting device[$2] $1. Device will now reboot ===" |& tee -a device_root.log
sudo fastboot -s $1 reboot
