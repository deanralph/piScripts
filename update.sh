#!/usr/bin/env bash
# Runs update routine

apt-get update apt-get upgrade -y && apt-get autoremove && apt-get autoclean >> updatelog
