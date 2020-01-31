#!/usr/bin/env bash
# mounts shared area

if [ ! -d /mnt/clusterShare ]
then
  mkdir /mnt/clusterShare
fi

sudo mount.cifs //arther/clusterShare /mnt/clusterShare -o user=guest 
