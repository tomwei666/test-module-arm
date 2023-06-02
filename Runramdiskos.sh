QEMU=/home/tom/work1/BiscuitOS/output/linux-5.4-aarch/qemu-system/qemu-system/aarch64-softmmu/qemu-system-aarch64
WRKDIR=$(pwd)
KERNEL_IMG=${WRKDIR}/../out1/arch/arm64/boot/Image
ROOTFS_IMG=${WRKDIR}/ramdisk-rootfs/out/ramdisk.img
sudo ${QEMU} \
    -M  virt \
    -cpu cortex-a53 \
    -smp 2 \
    -m 4096M \
	-kernel ${KERNEL_IMG} \
    -nographic \
    -append "root=/dev/ram0 rw rootfstype=ext4 console=ttyAMA0 init=/linuxrc ignore_loglevel" \
    -initrd ${ROOTFS_IMG} \
    -fsdev local,security_model=passthrough,id=fsdev0,path=/home/tom/work1/github-tom/qemu-xen-arm64/nfsroot \
    -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=hostshare
