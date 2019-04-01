# rpi-playback-device
Create a dedicated video playback device from a raspberry pi 3B

Prepare the SD-Card
- Download Raspbian Lite from here [raspberrypi.org/downloads/raspbian](https://www.raspberrypi.org/downloads/raspbian/)
- Burn 2018-03-13-raspbian-stretch-lite.img to an SD-Card, with an app like [Etcher](https://etcher.io)
- Copy all the files and folders in 'boot' to the root of the SD-Card
- Unmount the SD-Card from your pc

Insert the SD-card into the pi and boot it up. Make sure the pi is connected to the internet.

Setup the player
``` bash
sudo /boot/setup-audiovideo-looper.sh
```

In case you need the video to play seamless, use this command instead:
``` bash
sudo /boot/setup-seamless-looper.sh
```
There is no support for audio in the seamless setup.

After the raspberry pi has booted up, insert a usb-drive with video files.
