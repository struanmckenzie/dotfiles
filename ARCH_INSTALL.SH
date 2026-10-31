#!/bin/bash

pacstrap -K /mnt \
base linux-lts linux-firmware \
networkmanager sudo nano git \
efibootmgr grub \
amd-ucode \
base-devel
