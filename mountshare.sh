#!/usr/bin/env bash
# mounts shared area

if [ ! -d /mnt/clusterShare ]
then
  sudo mount.cifs //arther/clusterShare /mnt/clusterShare -o user=guest 
fi
