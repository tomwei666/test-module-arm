#!/bin/bash

# Build system.
#
# (C) 2020.10.13 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

RAM_SIZE=1024
CMDLINE="earlycon root=/dev/vda rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc loglevel=8"

#QEMUT=/work/github/qemu/build/qemu-system-aarch64
ROOT_1=/work/explore/126
#KERNEL_IMG=/work/explore/out_k414/arch/arm64/boot/Image
KERNEL_IMG=/work/explore/out_a_k510/arch/arm64/boot/Image

# 1-->1804 2-->2204
UBUNTU_VER=2

ROOTFS_FILE=${ROOT_1}/test-module-arm

do_running()
{
	SUPPORT_DEBUG=N
	SUPPORT_NET=N
	[ ${1}X = "debug"X -o ${2}X = "debug"X ] && ARGS+="-s -S "
	if [ ${1}X = "net"X  -o ${2}X = "net"X ]; then
		ARGS+="-net tap "
		ARGS+="-device virtio-net-device,netdev=bsnet0,"
		ARGS+="mac=E0:FE:D0:3C:2E:EE "
	#	ARGS+="-netdev tap,id=bsnet0,ifname=bsTap0 "
		ARGS+="-netdev tap,id=bsnet0,ifname=tap0 "
	fi

	#sudo ${QEMUT} ${ARGS} \
   sudo qemu-system-aarch64 ${ARGS} \
	-M virt \
	-m ${RAM_SIZE}M \
	-cpu cortex-a53 \
	-smp 2 \
	-device virtio-blk-device,drive=hd1 \
	-drive if=none,file=${ROOTFS_FILE}/Freeze.img,format=raw,id=hd1 \
	-device virtio-blk-device,drive=hd0 \
	-kernel ${KERNEL_IMG} \
	-drive if=none,file=${ROOTFS_FILE}/BiscuitOS.img,format=raw,id=hd0 \
	-nographic \
	-append "${CMDLINE}"
}

do_package()
{
	if [ "$UBUNTU_VER" -eq 1 ]; then
		echo 1
	elif [ "$UBUNTU_VER" -eq 2 ]; then
		echo "make rootfs under ubuntu2204"

		# first,need to excute below
		#mkdir -p rootfs_2204/dev/
		#sudo mknod rootfs_2204/dev/tty1 c 4 1
		#sudo mknod rootfs_2204/dev/tty2 c 4 2
		#sudo mknod rootfs_2204/dev/tty3 c 4 3
		#sudo mknod rootfs_2204/dev/tty4 c 4 4
		#sudo mknod rootfs_2204/dev/console c 5 1
		#sudo mknod rootfs_2204/dev/null c 1 3
		#mkdir -p rootfs_2204/proc/
		#mkdir -p rootfs_2204/sys/
		#mkdir -p rootfs_2204/tmp/
		#mkdir -p rootfs_2204/root/
		#mkdir -p rootfs_2204/var/
		#mkdir -p rootfs_2204/mnt/

		dd if=/dev/zero of=Freeze.img bs=1M count=512
		dd if=/dev/zero of=ramdisk bs=1M count=256
		mkfs.ext4 -F ramdisk
		rm -fr tmpfs
		mkdir -p tmpfs
		sudo mount -t ext4 ramdisk ./tmpfs/  -o loop
		sudo cp -raf rootfs_2204/*  tmpfs/
		sudo umount tmpfs
		mv ramdisk BiscuitOS.img
	fi
}


# Lunching BiscuitOS
case $1 in
	"pack")
		# Package BiscuitOS.img
		do_package
		;;
	"debug")
		# Debugging BiscuitOS
		do_umount
		do_running debug
		;;
	"net")
		# Establish Netwroking
		#sudo ${NET_CFG}/bridge.sh
		#sudo cp -rf ${NET_CFG}/qemu-ifup /etc
		#sudo cp -rf ${NET_CFG}/qemu-ifdown /etc
		#do_umount
		do_running net
		;;
	"mount")
		# Mount Freeze Disk
		do_mount
		;;
	"umount")
		# Umount Freeze Disk
		do_umount
		;;
	*)
		# Default Running BiscuitOS
		do_umount
		do_running $1 $2
		;;
esac
