#!/bin/sh

if [ -z "$1" ]
then
    echo "[Error] No path for hda is set"
    exit 1
fi

qemu-system-x86_64 --boot d --enable-kvm --smp 4 --device virtio-vga-gl --net nic --net user --cpu host --m 8196 --display sdl,gl=on --device es1370 --hda $1
