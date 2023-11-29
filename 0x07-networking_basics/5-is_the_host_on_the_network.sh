#!/bin/bash

# Check if an argument is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 {IP_ADDRESS}"
  exit 1
fi

# Get the IP address from the command line argument
ip_address=$1

# Ping the IP address 5 times
ping -c 5 "$ip_address"
