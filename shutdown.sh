#!/usr/bin/env bash
# Shuts down the raspberry pi & loggs the time

if [ -d "/mnt/clusterShare/logs/shutdownLog/$HOSTNAME" ] 
  then
    echo "Log folder not found - creating it"
    mkdir /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME
fi

echo "Shutdown command recieved at $(date-%a)" > /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME/$(date +'%Y%m%d%H%M')

shutdown -h now
