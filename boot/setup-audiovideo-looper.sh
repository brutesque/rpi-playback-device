#!/bin/bash

# Created on 2018-03-13-raspbian-stretch-lite.img

# change password
passwd

# Install dependencies
sudo apt-get update
sudo apt-get install -y git

# Install networking configs
#sudo cp /boot/config_templates/etc/network/interfaces /etc/network
#sudo cp /boot/config_templates/etc/modprobe.d/8192cu.conf /etc/modprobe.d/

# Install video looper application
git clone https://github.com/brutesque/pi_video_looper.git ~/pi_video_looper
pushd ~/pi_video_looper
sudo ./install.sh
popd

# Setup video looper application
# https://learn.adafruit.com/raspberry-pi-video-looper/installation
mkdir /home/pi/videos
sudo cp /boot/config_templates/video_looper.ini-audiovideo /boot/video_looper.ini
