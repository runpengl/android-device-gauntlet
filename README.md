# android-device-gauntlet

## Prerequisites

* Use Linux or OSX machine
* Install `adb` and `fastboot` for command line and add to path

> [Ubuntu] `sudo apt-get install android-tools-adb android-tools-fastboot`

> [Mac]    `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew install android-platform-tools`

## Command ref

`sudo ./gauntletFlash ~/path/to/.img_dir/`

`./gauntletInstall ~/path/to/apps/settings.apk`

`./gauntletStart com.xxx.settingsapp/.ConfigActivity`

`./gauntletMountSystem ~/path/to/system_apps/*.apk`

`./gauntletStart com.xxx.systemapp/.MainActivity`

`./gauntletFactoryReset`
