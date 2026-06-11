#!/bin/bash

# git clone https://github.com/apris2/driver_usb_wireless_adapter_ZTopIncop.git

cd /opt/wireless_adapter

sudo rmmod zt9101_ztopmac_usb 

sudo insmod ./zt9101_ztopmac_usb.ko cfg=./wifi.cfg

sudo cp zt9101_ztopmac_usb.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless/

sudo depmod -a

echo zt9101_ztopmac_usb | sudo tee -a /etc/modules

nmcli device