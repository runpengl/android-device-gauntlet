echo "====== [`date +%Y-%m-%d_%H:%M:%S`] Sending signal to factory reset device[$2] $1 ======" |& tee -a device_install.log
adb -s $1 am broadcast -a android.intent.action.MASTER_CLEAR

