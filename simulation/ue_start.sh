#!/bin/bash

# Get input
read -p "Enter the UE index: " number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid integer number."
    exit 1
fi

# Construct the commands

netns_command="sudo ./multi-ue.sh -c${number} -e"
ue_command="sudo -E ./nr-uesoftmodem -r 106 --numerology 1 --band 78 -C 3619200000 --rfsim --sa -O /home/goodsol/summerworkshop2023/ran/conf/ue.conf --rfsimulator.serveraddr 10.20${number}.1.100 --uicc0.imsi 00101000000010${number}"


cd ~/summerworkshop2023/ran/
$netns_command<< EOL
cd /home/goodsol/openairinterface5g/cmake_targets/ran_build/build
$ue_command
exit
EOL