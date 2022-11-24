#!/bin/bash

echo "Changing the state of the Apollo strip light \n"
sleep 1

echo "Light on \n"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n cc2333 > /dev/null
sleep 1
echo "Purple"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n 564c005900f0aa > /dev/null
sleep 1
echo "Blue"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n 7800ffff00f0ee > /dev/null
sleep 1
echo "Red"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n 789f000000f0ee > /dev/null
sleep 1
echo "Dark Purple \n"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n 78ff00ff00f0ee > /dev/null
sleep 1
echo "Light off"
gatttool -i hci0 -b 92:15:B9:99:C6:2E --char-write-req -a 0x0009 -n cc2433 > /dev/null