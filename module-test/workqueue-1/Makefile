obj-m :=my_test.o

#ROOT        := /home/tom/work/BiscuitOS/output/linux-5.0-aarch
ROOT        := /home/tom/work1/github-tom/test-module-arm
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)
CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-


ROOT_KENEL  := /home/tom/work1/github-tom
KERNELDIR   := $(ROOT_KENEL)/out
INCLUDEDIR=$(ROOT_KENEL)/linux-4.14.1/include
ARCHINCLUDEDIR=$(ROOT_KENEL)/linux-4.14.1/arch/$(ARCH)/include

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL)

clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers

.PHONY: modules clean
