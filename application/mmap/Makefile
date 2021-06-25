CC=/home/tom/work/BiscuitOS/output/linux-4.4.174-aarch/aarch64-linux-gnu/aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
INC=-I/home/tom/work/BiscuitOS/output/linux-4.4.174-aarch/aarch64-linux-gnu/aarch64-linux-gnu/aarch64-linux-gnu/libc/usr
TARGET=mmap
SRCS=mmap.c
mmap : mmap.o
	${CC} -o mmap mmap.o 
mmap.o : mmap.c
	${CC} $(INC) -c mmap.c
clean:
	rm -fr *.o mmap
install:
	cp mmap ../../rootfs/rootfs/var-user
