AS=/home/tom/work/BiscuitOS/output/linux-4.4.174-aarch/aarch64-linux-gnu/aarch64-linux-gnu/bin/aarch64-linux-gnu-as
LD=/home/tom/work/BiscuitOS/output/linux-4.4.174-aarch/aarch64-linux-gnu/aarch64-linux-gnu/bin/aarch64-linux-gnu-ld

sys_exit : sys_exit.o
	${LD} -o sys_exit sys_exit.o 
sys_exit.o : sys_exit.S
	${AS} -o sys_exit.o sys_exit.S
clean:
	rm -fr *.o sys_exit
install:
	sudo cp sys_exit ../../rootfs/rootfs/var-user
