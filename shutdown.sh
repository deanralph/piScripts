#!/usr/bin/env bash
# Shuts down the raspberry pi & logs the time

if [ -d "/mnt/clusterShare/logs/shutdownLog/$HOSTNAME" ] 
  then
    echo "Log folder not found - creating it"
    mkdir /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME
fi

echo "Shutdown command recieved" > /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME/$(date +'%Y%m%d%H%M')

shutdown -h now
