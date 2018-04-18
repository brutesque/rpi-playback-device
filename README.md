# rpi-playback-device
Create a dedicated video playback device from a raspberry pi

Prepare the SD-Card
- Download Raspbian Lite from here http://www.raspberrypi.org/downloads/
- Burn 2018-03-13-raspbian-stretch-lite.img to an SD-Card, with an app like https://etcher.io
- Copy all the files and folders in 'boot' to the root of the SD-Card
- Unmount the SD-Card from your pc

Insert the SD-card into the pi and boot it up

Setup the player
``` bash
sudo /boot/setup-audiovideo-looper.sh
```

In case you need the video to play seamless, use this command instead:
``` bash
sudo /boot/setup-seamless-looper.sh
```
There is no support for audio in the seamless setup.

You should make the SD-Card readonly, so suddon power-loss will not corrupt the device
``` bash
sudo /boot/make-readonly.sh
```
Reboot the device, when asked.

After the raspberry pi has booted again, insert a usb-drive with video files.
