#!/bin/sh
set -x
kexec -p /Image --append="console=ttyAMA0 root=/dev/vda rw rootfstype=ext4 init=/linuxrc loglevel=8 maxcpus=1 nr_cpus=1 reset_devices irqpoll nokaslr KDUMP_KERNEL=1"
