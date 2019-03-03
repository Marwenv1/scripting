#! /bin/bash
test()
{
hi=`sudo df -HT`
sda1=`sudo df -HT | grep '/dev/sda1' | cut -b 44,45`
udev=`sudo df -HT | grep 'udev' | cut -b 44,45`
echo "$sda1"
sudo gnuplot -e "plot $sda1; pause -1"
sudo gnuplot -e "plot $udev; pause -1"
}

