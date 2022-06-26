#!/bin/bash
while read line;
do
mri=$(echo $line | cut -d: -f2)
if ping -c 1 $(echo $line | cut -d: -f1) 1>/dev/null; then echo -e "\033[32m ONLINE | $mri"; else echo -e "\033[31m OFLINE | $mri"; fi
done < atslist.txt
