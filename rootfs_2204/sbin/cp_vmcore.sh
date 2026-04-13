#!/bin/sh
set -x
#!/bin/sh

set -x
MNT_DIR=/mnt
OUT_FILE=${MNT_DIR}/vmcore
echo "[1] create mount point"
mkdir -p ${MNT_DIR}

echo "[2] mount 9p share"
mount -t 9p -o trans=virtio,version=9p2000.L,msize=1048576 hostshare ${MNT_DIR}
if [ $? -ne 0 ]; then
    echo "mount 9p failed"
    exit 1
fi

echo "[3] check /proc/vmcore"
if [ ! -f /proc/vmcore ]; then
    echo "/proc/vmcore not found"
    umount ${MNT_DIR}
    exit 1
fi

echo "[4] copy vmcore"
cat /proc/vmcore > ${OUT_FILE}
if [ $? -ne 0 ]; then
    echo "copy vmcore failed"
    sync
    umount ${MNT_DIR}
    exit 1
fi

echo "[5] sync"
sync

echo "[6] show result"
ls -lh ${OUT_FILE}

echo "vmcore saved to ${OUT_FILE}"
exit 0
