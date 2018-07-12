echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Starting app installation process for device[$2] $1 ======" |& tee -a device_install.log
for f in "${@:3}"
do
        filename=$(basename $f)
	echo "*** Installing $filename on device[$2] $1 ***" |& tee -a device_install.log
	adb -s $1 install -r $f
done
echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Finished installing all apps onto device[$2] $1 ======" |& tee -a device_install.log
