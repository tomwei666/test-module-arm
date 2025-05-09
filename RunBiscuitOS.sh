#!/bin/bash

# Build system.
#
# (C) 2020.10.13 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

#/home/tom/work/BiscuitOS-ALL/BiscuitOS/output/linux-5.0-aarch
ARCH=arm64
BUSYBOX=/home/tom/work/BiscuitOS/output/linux-5.0-aarch/busybox/busybox
OUTPUT=/home/tom/work/BiscuitOS-ALL/BiscuitOS/output/linux-5.0-aarch
ROOTFS_NAME=ext4
CROSS_COMPILE=aarch64-linux-gnu
FS_TYPE=ext4
FS_TYPE_TOOLS=mkfs.ext4
ROOTFS_SIZE=150
FREEZE_SIZE=512
DL=/home/tom/work/BiscuitOS/dl
DEBIAN_PACKAGE=buster-base-arm64.tar.gz.N.bsp
#RAM_SIZE=2048
RAM_SIZE=1024
LINUX_DIR=${ROOT}/linux/out/arch
NET_CFG=${ROOT}/package/networking
CMDLINE="earlycon root=/dev/vda rw rootfstype=${FS_TYPE} console=ttyAMA0 init=/linuxrc loglevel=8"
#KERNEL_IMG=/home/tom/work/BiscuitOS-ALL/BiscuitOS/output/linux-4.14.1-aarch/linux/out/arch/arm64/boot/Image

ROOT=/work/BiscuitOS/output/linux-4.14.1-aarch
QEMUT=${ROOT}/qemu-system/qemu-system/aarch64-softmmu/qemu-system-aarch64
ROOT_1=/work/kernel
KERNEL_IMG=${ROOT_1}/out/arch/arm64/boot/Image
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
	

	sudo ${QEMUT} ${ARGS} \
	-M virt \
	-m ${RAM_SIZE}M \
	-cpu cortex-a53 \
	-smp 2 \
	-device virtio-blk-device,drive=hd1 \
	-drive if=none,file=${ROOT}/Freeze.img,format=raw,id=hd1 \
	-device virtio-blk-device,drive=hd0 \
	-kernel ${KERNEL_IMG} \
	-drive if=none,file=${ROOTFS_FILE}/BiscuitOS.img,format=raw,id=hd0 \
	-nographic \
	-append "${CMDLINE}"
}


do_package()
{
	sudo cp ${BUSYBOX}/_install/*  ${OUTPUT}/rootfs/${ROOTFS_NAME} -raf
	sudo chown root.root ${OUTPUT}/rootfs/${ROOTFS_NAME}/* -R
	dd if=/dev/zero of=${OUTPUT}/rootfs/ramdisk bs=1M count=${ROOTFS_SIZE}
	${FS_TYPE_TOOLS} -E lazy_itable_init=1,lazy_journal_init=1 -F ${OUTPUT}/rootfs/ramdisk
	mkdir -p ${OUTPUT}/rootfs/tmpfs
	sudo mount -t ${FS_TYPE} ${OUTPUT}/rootfs/ramdisk \
	              ${OUTPUT}/rootfs/tmpfs/ -o loop
	sudo cp -raf ${OUTPUT}/rootfs/${ROOTFS_NAME}/*  ${OUTPUT}/rootfs/tmpfs/
	sudo umount ${OUTPUT}/rootfs/tmpfs
	mv ${OUTPUT}/rootfs/ramdisk ${OUTPUT}/BiscuitOS.img
	rm -rf ${OUTPUT}/rootfs/tmpfs
}


do_mount()
{
	mkdir -p ${ROOT}/FreezeDir
	mountpoint -q ${ROOT}/FreezeDir
	[ $? = 0 ] && echo "FreezeDir has mount!" && exit 0
	## Mount Image
	sudo mount -t ${FS_TYPE} ${ROOT}/Freeze.img ${ROOT}/FreezeDir -o loop >> /dev/null 2>&1
	sudo chown ${USER}.${USER} -R ${ROOT}/FreezeDir
	echo "=============================================="
	echo "FreezeDisk: ${ROOT}/Freeze.img"
	echo "MountDiret: ${ROOT}/FreezeDir"
	echo "=============================================="
}


do_umount()
{
	mountpoint -q ${ROOT}/FreezeDir
	[ $? = 1 ] && return 0
	sudo umount ${ROOT}/FreezeDir > /dev/null 2>&1
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
