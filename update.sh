#!/usr/bin/env bash
# Runs update routine

mkdir logs/

updatelog=logs/$(date +'%Y%m%d%H%M')

echo "Checking For Updates..."
apt-get update > $updatelog

echo "Applying Updates..."
apt-get upgrade -y >> $updatelog

echo "Removing defunct packages..."
apt-get autoremove >> $updatelog

echo "Cleaning up..."
apt-get autoclean >> $updatelog

echo "Done!"
