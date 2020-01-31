#!/usr/bin/env bash
# Runs update routine

mkdir logs/

updatelog=logs/$(date +'%Y%m%d%H%M')

apt-get update >> $updatelog
apt-get upgrade -y >> $updatelog
apt-get autoremove >> $updatelog
apt-get autoclean >> $updatelog
