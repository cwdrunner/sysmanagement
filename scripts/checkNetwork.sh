#!/bin/bash
# Simple script to restore WiFi connectivity. 

# Test for connectivity
if [ $(cat /sys/class/net/wlan0/carrier) = 1 ]; 
then  
  systemctl start netplan-wpa@wlan0.service; 
fi

