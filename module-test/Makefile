obj-m :=my_test.o

ROOT        := /home/tom/work/BiscuitOS/output/linux-5.0-aarch
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)/$(CROSS_NAME)
CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-
KERNELDIR   := $(ROOT)/linux/out

INCLUDEDIR=$(ROOT)/linux/linux/include
ARCHINCLUDEDIR=$(ROOT)/linux/linux/arch/$(ARCH)/include
INSTALLDIR=$(ROOT)/rootfs/rootfs/

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL)

clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers

.PHONY: modules clean
