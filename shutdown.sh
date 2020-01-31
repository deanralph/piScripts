#!/usr/bin/env bash
# Shuts down the raspberry pi 

echo "Shutdown command recieved on $HOSTNAME at $date-%a" > /mnt/clusterShare/logs/shutdownLogs/$HOSTNAME+$date-%a

shutdown -h now
