#!/usr/bin/env bash
# mounts shared area

if [ ! -d /mnt/clusterShare ]
then
  mkdir /mnt/clusterShare
fi

sudo mount.cifs //clockwork/piShare /mnt/clusterShare -o user=guest 
