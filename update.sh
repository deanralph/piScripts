#!/usr/bin/env bash
# Runs update routine

backup_dir=$(date +'%m/%d/%Y')
echo "Backup dir for today: /logs/${backup_dir}"

mkdir /logs/$backup_dir/

mv updatelog /logs/$backup_dir/updatelog

apt-get update apt-get upgrade -y && apt-get autoremove && apt-get autoclean >> updatelog
