#!bin/bash

echo "Select your desired Device: (Most modern laptops and computers will either be 'sda' or 'nvme0n1/n2')"

read DEVICENAME

sudo cfdisk $DEVICENAME
