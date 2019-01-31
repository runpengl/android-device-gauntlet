echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Starting activity on device[$2] $1 ======" |& tee -a device_install.log

adb -s $1 am start -n $3
