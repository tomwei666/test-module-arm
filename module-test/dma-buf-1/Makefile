obj-m :=exporter-sg.o importer-sg.o

ROOT        := /work/github-tomwei/test-module-arm
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)
CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-


ROOT_KENEL  := /work/github-tomwei
KERNELDIR   := $(ROOT_KENEL)/out
INCLUDEDIR=$(ROOT_KENEL)/kernel-4.14/include
ARCHINCLUDEDIR=$(ROOT_KENEL)/kernel-4.14/arch/$(ARCH)/include

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL)
			sudo cp *.ko ../../rootfs/ext4/
clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers

.PHONY: modules clean
