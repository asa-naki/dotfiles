#!/bin/bash -e

name="/swapfile"

sudo swapoff $name
sudo fallocate -l 32G $name
sudo chmod 600 $name
sudo mkswap $name
sudo swapon $name

free -h