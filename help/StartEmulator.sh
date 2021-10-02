#!/bin/bash

home="/Users/kejam/Desktop/Projects/Assembly/arm"

qemu-system-arm \
   -kernel ${home}/raspbian_bootpart/kernel-qemu-4.14.79-stretch \
   -dtb ${home}/raspbian_bootpart/versatile-pb.dtb \
   -m 256 -M versatilepb -cpu arm1176 \
   -serial stdio \
   -append "rw console=ttyAMA0 root=/dev/sda2 rootfstype=ext4  loglevel=8 rootwait fsck.repair=yes memtest=1" \
   -drive file=${home}/2020-02-13-raspbian-buster-lite.img,format=raw \
   -nic user,hostfwd=tcp::5022-:22  \
   -no-reboot

# sudo systemctl enable ssh
# sudo systemctl start ssh
# ssh -p 5022 pi@localhost
