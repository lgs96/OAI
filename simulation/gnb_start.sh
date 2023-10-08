#!/bin/bash

# Change to the desired directory
cd /home/goodsol/openairinterface5g/cmake_targets/ran_build/build

# Execute gNB
sudo ./nr-softmodem RFSIMULATOR=server -O ~/summerworkshop2023/oam/conf/gnb.sa.band78.fr1.106PRB.usrpb210.conf --gNBs.[0].min_rxtxtime 6 --rfsim --sa