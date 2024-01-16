obj-m :=my_test.o

#ROOT        := /home/tom/work/BiscuitOS/output/linux-5.0-aarch
ROOT        := /work/kernel/test-module-arm
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)
CROSS_TOOL  := /work1/github-tomwei/test-module-arm/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-

ROOT_KENEL  := /work1/opensource/
KERNELDIR   := $(ROOT_KENEL)/out-linux
INCLUDEDIR=$(ROOT_KENEL)/linux/include
ARCHINCLUDEDIR=$(ROOT_KENEL)/linux/arch/$(ARCH)/include

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL)

clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers

.PHONY: modules clean

#/work1/opensource/linux
#out-linux
