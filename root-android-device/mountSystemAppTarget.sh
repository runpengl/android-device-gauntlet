echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Starting system app mount process for device[$2] $1 ======" |& tee -a device_install.log
adb -s $1 shell mount -o remount,rw /system
for f in "${@:3}"; do
        filename=$(basename $f)
	echo "*** Pushing system app $filename onto device[$2] $1 ***" |& tee -a device_install.log
	adb -s $1 push $f /system/priv-app/
done
echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Finished pushing all system apps onto device[$2] $1. Rebooting now. ======" |& tee -a device_install.log

adb -s $1 reboot /system/priv-app/
