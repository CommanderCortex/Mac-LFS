#!bin/bash

rmmod ssb
rmmod b43
modprobe b43

#Feel free to add pio=1,qos=0 | to the b43 Module by uncommenting the line below:

#options b43 pio=1 qos=0 >> /etc/modprobe.d/b43.conf


