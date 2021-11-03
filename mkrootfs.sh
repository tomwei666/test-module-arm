#!/bin/bash

# Build system.
#
# (C) 2021.03.29 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT_DIR=/home/tom/work/kernel/
ROOT=${ROOT_DIR}/test-module-arm

ROOTFS_NAME=ext4
ROOTFS_NAME_1=rootfs
FS_TYPE=ext4
FS_TYPE_TOOLS=mkfs.ext4
ROOTFS_SIZE=150
FREEZE_SIZE=512
RAM_SIZE=512

do_package()
{
	sudo chown root.root ${ROOT}/rootfs/${ROOTFS_NAME}/* -R
	dd if=/dev/zero of=${ROOT}/rootfs/ramdisk bs=1M count=${ROOTFS_SIZE}
	${FS_TYPE_TOOLS} -E lazy_itable_init=1,lazy_journal_init=1 -F ${ROOT}/rootfs/ramdisk
	mkdir -p ${ROOT}/rootfs/tmpfs
	sudo mount -t ${FS_TYPE} ${ROOT}/rootfs/ramdisk \
	              ${ROOT}/rootfs/tmpfs/ -o loop
	sudo cp -raf ${ROOT}/rootfs/${ROOTFS_NAME}/*  ${ROOT}/rootfs/tmpfs/
	sudo cp -raf ${ROOT}/rootfs/${ROOTFS_NAME_1}/*  ${ROOT}/rootfs/tmpfs/
	sudo umount ${ROOT}/rootfs/tmpfs
	mv ${ROOT}/rootfs/ramdisk ${ROOT}/BiscuitOS.img
	rm -rf ${ROOT}/rootfs/tmpfs
}

# Lunching BiscuitOS
case $1 in
	"pack")
		# Package BiscuitOS.img
		do_package
		;;
	*)
		# Default Running BiscuitOS
		do_package
		;;
esac
