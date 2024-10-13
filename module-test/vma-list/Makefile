obj-m := my_test.o 

ROOT        := /work/github-tomwei/test-module-arm-1
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := /work1/github-tomwei/test-module-arm/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu
CROSS_TOOL  := $(CROSS_PATH)/bin/aarch64-linux-gnu-

ROOT_KENEL  := /work1/opensource/kernel
KERNELDIR   := $(ROOT_KENEL)/out_a_common
INCLUDEDIR=$(ROOT_KENEL)/android-common/include
ARCHINCLUDEDIR=$(ROOT_KENEL)/android-common/arch/$(ARCH)/include

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL)
			sudo cp *.ko ../../rootfs/ext4/
clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers *.mod

.PHONY: modules clean
