#!/bin/bash
###########
#Author: Venu
#Date:06/18/2025
#This script outputs the node health
#version:v1
##########

set -x

echo "print the disk space"

df -h

echo "print memory"

free -g

echo "print cpu"

nproc

ps -ef | grep amazon

ps -ef | grep amazon | awk -F" " '{print $1}'
