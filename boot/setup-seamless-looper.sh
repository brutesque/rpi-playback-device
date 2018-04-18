#!/bin/bash

# Created on 2018-03-13-raspbian-stretch-lite.img

# change password
passwd

# Setup Wi-Fi
read -p "Enter Wi-Wfi SSID: " WIFI_SSID
if [ -n "${WIFI_SSID}" ]; then
	read -p "Enter Wi-Wfi Password: " WIFI_PASSWORD
	if [ -n "${WIFI_PASSWORD}" ]; then
		wpa_passphrase "${WIFI_SSID}" "${WIFI_PASSWORD}" | sudo tee -a /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null
		sudo sed -i '/#psk="*"/d' /etc/wpa_supplicant/wpa_supplicant.conf
		wpa_cli -i wlan0 reconfigure
	fi
fi

# Install dependencies
sudo apt-get update
sudo apt-get install -y git

# Install video looper application
git clone https://github.com/brutesque/pi_video_looper.git ~/pi_video_looper
pushd ~/pi_video_looper
sudo ./install.sh
popd

# Setup video looper application
# https://learn.adafruit.com/raspberry-pi-video-looper/installation
mkdir /home/pi/videos
sudo cp /boot/config_templates/video_looper.ini-seamless /boot/video_looper.ini
