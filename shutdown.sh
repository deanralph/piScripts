#!/usr/bin/env bash
# Shuts down the raspberry pi & loggs the time

if [ -d "/mnt/clusterShare/logs/shutdownLogs" ] 
  then
    echo "Log folder not found - creating it"
    mkdir /mnt/clusterShare/logs/shutdownLogs
fi

echo "Shutdown command recieved on $HOSTNAME at $date-%a" > /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME+$date-%a

shutdown -h now
