# SPDX-License-Identifier: GPL-2.0

ROOT        := /work/kernel/test-module-arm
CROSS_NAME  := aarch64-linux-gnu
CROSS_PATH  := $(ROOT)/$(CROSS_NAME)
CROSS_TOOL  := $(CROSS_PATH)/bin/$(CROSS_NAME)-

CC := $(CROSS_TOOL)gcc
#CFLAGS := -I../../usr/include
CFLAGS := -I/work/kernel/linux-4.14.1/include/


PROGS := dmabuf_sync share_fd

all: $(PROGS)

install:
	sudo cp dmabuf_sync /work/kernel/test-module-arm/rootfs/ext4/var-user
	sudo cp share_fd /work/kernel/test-module-arm/rootfs/ext4/var-user

clean:
	rm -fr $(PROGS)
