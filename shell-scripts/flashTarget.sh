# Unlocks, flashes, and reboots single target device 

echo "===  [`date +%Y-%m-%d_%H:%M:%S`] Starting to process device[$2] $1 ===" |& tee -a setup_device.log

echo "*** Unlocking device[$2] $1 ***" |& tee -a setup_device.log
sudo fastboot -s $1 oem unlock 
sudo fastboot -s $1 oem unlock
echo "Device[$2] $1 unlocked at `date +%Y-%m-%d_%H:%M:%S`" |& tee -a setup_device.log

sudo fastboot -s $1 flash boot $3rooted_boot.img
sudo fastboot -s $1 flash recovery $3recovery.img
sudo fastboot -s $1 flash system $3system.img 
echo "Device[$2] $1 all partitions flashed at `date +%Y-%m-%d_%H:%M:%S`" |& tee -a setup_device.log

sudo fastboot -s $1 reboot 
echo "=== [`date +%Y-%m-%d_%H:%M:%S`] Device[$2] $1 completed if no errors logged here ===" |& tee -a setup_device.log;
