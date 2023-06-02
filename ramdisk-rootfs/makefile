#!/bin/bash
WRKDIR=$(pwd)
BUILD=${WRKDIR}/build
DL=${WRKDIR}/dl
OUT=${WRKDIR}/out
BUSYBOX_SOURCE_NAME="busybox-1.30.1.tar.bz2"
BUSYBOX_SOURCE_DIR=${BUILD}/busybox-1.30.1
BUSYBOX_INSTALL=${BUSYBOX_SOURCE_DIR}/_install
#/home/tom/work1/github-tom/test-module-arm/aarch64-linux-gnu/bin
CROSS_DIR=/home/tom/work1/github-tom/test-module-arm
CROSS_TOOL=${CROSS_DIR}/aarch64-linux-gnu/bin/aarch64-linux-gnu-
CROSS_LIB=${CROSS_DIR}/aarch64-linux-gnu/libc/lib

unzip_source()
{
	# copy
	cp ${DL}/${BUSYBOX_SOURCE_NAME} ${BUILD}
	cd ${BUILD}
	tar -jxv -f ${BUSYBOX_SOURCE_NAME}
}
compile_busybox()
{
	cd ${BUSYBOX_SOURCE_DIR}
	make ARCH=arm CROSS_COMPILE=${CROSS_TOOL} clean
	make ARCH=arm CROSS_COMPILE=${CROSS_TOOL} defconfig
	# 把 "#CONFIG_DEBUG is not set" 替换成 "CONFIG_STATIC=y"
	LINE_NUM=`grep -n "CONFIG_STATIC" .config | awk -F':' '{print $1}'`
	STATIC_CONTENT="CONFIG_STATIC=y"
	sed -i "$[ LINE_NUM ]c $STATIC_CONTENT" .config
	make -j8 ARCH=arm64 CROSS_COMPILE=${CROSS_TOOL}
	make install  ARCH=arm64 CROSS_COMPILE=${CROSS_TOOL}
}
clean_rootfs()
{
	sudo rm -rf ${BUILD}/rootfs
	sudo rm -rf ${BUILD}/tmpfs
	sudo rm -rf ${BUILD}/ramdisk*
	sudo rm -rf ${OUT}/ramdisk*
	sudo rm -rf ${BUILD}/${BUSYBOX_SOURCE_NAME}
	sudo rm -rf ${BUSYBOX_SOURCE_DIR}
}
clean_busybox()
{
	cd ${BUSYBOX_SOURCE_DIR}
	make ARCH=arm CROSS_COMPILE=${CROSS_TOOL} clean
}
create_rootfs()
{
	cd ${BUILD}

	# 1. delete tmp file
	sudo rm -rf rootfs
	sudo rm -rf tmpfs
	sudo rm -rf ramdisk*

	# 2. copy busybox file
	sudo mkdir rootfs
	sudo cp ${BUSYBOX_INSTALL}/* rootfs/ -raf

	# 3. create file
	sudo mkdir -p rootfs/proc/
	sudo mkdir -p rootfs/sys/
	sudo mkdir -p rootfs/tmp/
	sudo mkdir -p rootfs/root/
	sudo mkdir -p rootfs/var/
	sudo mkdir -p rootfs/mnt/

	#4. copy etc file
	sudo cp etc rootfs/ -arf
	sudo cp -arf ${CROSS_LIB}/* rootfs/lib/

	#5. create device
	sudo mkdir -p rootfs/dev/
	sudo mknod rootfs/dev/tty1 c 4 1
	sudo mknod rootfs/dev/tty2 c 4 2
	sudo mknod rootfs/dev/tty3 c 4 3
	sudo mknod rootfs/dev/tty4 c 4 4
	sudo mknod rootfs/dev/console c 5 1
	sudo mknod rootfs/dev/null c 1 3

	#6. create rootfs
	sudo dd if=/dev/zero of=ramdisk bs=1M count=16
	sudo mkfs.ext4 -F ramdisk

	sudo mkdir -p tmpfs
	sudo mount -t ext4 ramdisk ./tmpfs/  -o loop
	sudo cp -raf rootfs/*  tmpfs/
	sudo umount tmpfs
	sudo gzip --best -c ramdisk > ramdisk.gz
	sudo mkimage -n "ramdisk" -A arm -O linux -T ramdisk -C gzip -d ramdisk.gz ramdisk.img
	sudo cp ramdisk* ${OUT}/
}
#create_rootfs
#clean_rootfs

case $1 in
	"all")
		unzip_source
		compile_busybox
		create_rootfs
		;;
	"rootfs")
		create_rootfs
		;;
	"clean")
		clean_busybox
		clean_rootfs
		;;
esac
