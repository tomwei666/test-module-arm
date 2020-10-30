cd _install
find . | cpio -o --format=newc > ../rootfs.img
cd ..
gzip -c rootfs.img > rootfs.img.gz
