obj-m :=my_test.o

ROOT        := /work/github-tomwei/test-module-arm
ARCH        := arm64
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)
#CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-

CROSS_TOOL  := $(CROSS_NAME)-

ROOT_KENEL  := /work/github-tomwei
KERNELDIR   := /work1/opensource/kernel/out_a_common 
INCLUDEDIR=/work1/opensource/kernel/android-common/include
ARCHINCLUDEDIR=/work1/opensource/kernel/android-common/arch/$(ARCH)/include

#head file flag
ccflags-y += -I$(INCLUDEDIR) -I$(ARCHINCLUDEDIR)


PWD := $(shell pwd)

modules:
		    $(MAKE) -C $(KERNELDIR) M=$(PWD) modules ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_TOOL) CC=/work1/PTG-4.6/buildsystem/android12/prebuilts/clang/host/linux-x86/clang-r416183b/bin/clang-12
			sudo cp *.ko ../../rootfs/ext4/

clean:
		    rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions modules.order Module.symvers *.mod

.PHONY: modules clean
