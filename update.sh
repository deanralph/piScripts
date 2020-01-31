#!/usr/bin/env bash
# Runs update routine

if [ ! -d "/mnt/clusterShare/logs/shutdownLogs" ] 
  then
    echo "Log folder not found - creating it"
    mkdir /mnt/clusterShare/logs/updateLogs/$HOSTNAME
fi

updatelog=/mnt/clusterShare/logs/updateLogs/$HOSTNAME/$(date +'%Y%m%d%H%M')

echo "Checking For Updates..."
apt-get update > $updatelog

echo "Applying Updates..."
apt-get upgrade -y >> $updatelog

echo "Removing defunct packages..."
apt-get autoremove >> $updatelog

echo "Cleaning up..."
apt-get autoclean >> $updatelog

echo "Done!"
