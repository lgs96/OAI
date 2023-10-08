#!/bin/bash

# Get input
read -p "Enter the UE index: " number

if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid integer number."
    exit 1
fi

# Construct the commands

netns_command="sudo ./multi-ue.sh -d${number}"


cd ~/summerworkshop2023/ran/
$netns_command