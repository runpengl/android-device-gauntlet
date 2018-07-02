# Unlocks, flashes, and reboots single target device 

echo Starting to process device $1 at `date +%Y-%m-%d_%H:%M:%S` |& tee -a setup_device.log; 
echo Unlocking device $1 |& tee -a setup_device.log; 
fastboot -s $1 oem unlock; 
fastboot -s $1 oem unlock; 
echo Device $1 unlocked at `date +%Y-%m-%d_%H:%M:%S` |& tee -a setup_device.log; 
fastboot flash boot boot.img -s $1;
fastboot flash recovery recovery.img -s $1;
fastboot flash system system.img -s $1; 
echo Device $1 all partitions flashed at `date +%Y-%m-%d_%H:%M:%S` |& tee -a setup_device.log;
fastboot reboot -s $1; 
echo Device $1 completed if no errors logged here, at `date +%Y-%m-%d_%H:%M:%S` |& tee -a setup_device.log;
