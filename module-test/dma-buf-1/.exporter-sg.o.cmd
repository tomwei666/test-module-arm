cmd_/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o := /work/github-tomwei/test-module-arm/aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc -Wp,-MD,/work/github-tomwei/test-module-arm/module-test/dma-buf-1/.exporter-sg.o.d -nostdinc -isystem /work/github-tomwei/test-module-arm/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin/../lib/gcc/aarch64-linux-gnu/7.4.1/include -I/work/github-tomwei/kernel-4.14/arch/arm64/include -I./arch/arm64/include/generated  -I/work/github-tomwei/kernel-4.14/include -I./include -I/work/github-tomwei/kernel-4.14/arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi -I/work/github-tomwei/kernel-4.14/include/uapi -I./include/generated/uapi -include /work/github-tomwei/kernel-4.14/include/linux/kconfig.h  -I/work/github-tomwei/test-module-arm/module-test/dma-buf-1 -I/work/github-tomwei/test-module-arm/module-test/dma-buf-1 -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -mgeneral-regs-only -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables -mpc-relative-literal-loads -mabi=lp64 -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-int-in-bool-context -O2 --param=allow-store-data-races=0 -DCC_HAVE_ASM_GOTO -Wframe-larger-than=2048 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init  -I/work/github-tomwei/kernel-4.14/include  -I/work/github-tomwei/kernel-4.14/arch/arm64/include  -DMODULE -mcmodel=large  -DKBUILD_BASENAME='"exporter_sg"'  -DKBUILD_MODNAME='"exporter_sg"' -c -o /work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o /work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.c

source_/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o := /work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.c

deps_/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o := \
  /work/github-tomwei/kernel-4.14/include/linux/dma-buf.h \
  /work/github-tomwei/kernel-4.14/include/linux/file.h \
  /work/github-tomwei/kernel-4.14/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /work/github-tomwei/kernel-4.14/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/types.h \
  arch/arm64/include/generated/uapi/asm/types.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/types.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/int-ll64.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/int-ll64.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/bitsperlong.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/bitsperlong.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/posix_types.h \
  /work/github-tomwei/kernel-4.14/include/linux/stddef.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/stddef.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/posix_types.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/posix_types.h \
  /work/github-tomwei/kernel-4.14/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /work/github-tomwei/kernel-4.14/include/linux/err.h \
  arch/arm64/include/generated/uapi/asm/errno.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/errno.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/errno-base.h \
  /work/github-tomwei/kernel-4.14/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/arch/has/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /work/github-tomwei/kernel-4.14/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /work/github-tomwei/test-module-arm/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/lib/gcc/aarch64-linux-gnu/7.4.1/include/stdarg.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/string.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/string.h \
    $(wildcard include/config/arch/has/uaccess/flushcache.h) \
  /work/github-tomwei/kernel-4.14/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/bug.h \
  /work/github-tomwei/kernel-4.14/include/linux/stringify.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/brk-imm.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
    $(wildcard include/config/smp.h) \
  /work/github-tomwei/kernel-4.14/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /work/github-tomwei/kernel-4.14/include/linux/linkage.h \
  /work/github-tomwei/kernel-4.14/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/linkage.h \
  /work/github-tomwei/kernel-4.14/include/linux/bitops.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/bitops.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/barrier.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/barrier.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/builtin-__ffs.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/builtin-ffs.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/builtin-__fls.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/builtin-fls.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/ffz.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/fls64.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/sched.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/hweight.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/arch_hweight.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/const_hweight.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/lock.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/non-atomic.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/bitops/le.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/byteorder.h \
  /work/github-tomwei/kernel-4.14/include/linux/byteorder/little_endian.h \
    $(wildcard include/config/cpu/big/endian.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/byteorder/little_endian.h \
  /work/github-tomwei/kernel-4.14/include/linux/swab.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/swab.h \
  arch/arm64/include/generated/uapi/asm/swab.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/swab.h \
  /work/github-tomwei/kernel-4.14/include/linux/byteorder/generic.h \
  /work/github-tomwei/kernel-4.14/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /work/github-tomwei/kernel-4.14/include/linux/typecheck.h \
  /work/github-tomwei/kernel-4.14/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /work/github-tomwei/kernel-4.14/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /work/github-tomwei/kernel-4.14/include/linux/kern_levels.h \
  /work/github-tomwei/kernel-4.14/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/kernel.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/sysinfo.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/cache.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/cputype.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/broken/gas/inst.h) \
    $(wildcard include/config/arm64/4k/pages.h) \
    $(wildcard include/config/arm64/16k/pages.h) \
    $(wildcard include/config/arm64/64k/pages.h) \
  /work/github-tomwei/kernel-4.14/include/linux/build_bug.h \
  /work/github-tomwei/kernel-4.14/include/linux/mm.h \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/x86/intel/memory/protection/keys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/device/private.h) \
    $(wildcard include/config/device/public.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /work/github-tomwei/kernel-4.14/include/linux/errno.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/errno.h \
  /work/github-tomwei/kernel-4.14/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /work/github-tomwei/kernel-4.14/include/linux/gfp.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /work/github-tomwei/kernel-4.14/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /work/github-tomwei/kernel-4.14/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /work/github-tomwei/kernel-4.14/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /work/github-tomwei/kernel-4.14/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /work/github-tomwei/kernel-4.14/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/const.h \
  arch/arm64/include/generated/asm/preempt.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/preempt.h \
  /work/github-tomwei/kernel-4.14/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/debug/kmemleak.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /work/github-tomwei/kernel-4.14/include/linux/restart_block.h \
    $(wildcard include/config/compat.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/current.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/thread_info.h \
    $(wildcard include/config/arm64/sw/ttbr0/pan.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/arm64/va/bits.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/debug/align/rodata.h) \
    $(wildcard include/config/blk/dev/initrd.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/page-def.h \
    $(wildcard include/config/arm64/page/shift.h) \
    $(wildcard include/config/arm64/cont/shift.h) \
  arch/arm64/include/generated/asm/sizes.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/sizes.h \
  /work/github-tomwei/kernel-4.14/include/linux/sizes.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/memory_model.h \
  /work/github-tomwei/kernel-4.14/include/linux/pfn.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/stack_pointer.h \
  /work/github-tomwei/kernel-4.14/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/irqflags.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/ptrace.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/ptrace.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/hwcap.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/hwcap.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/ptrace.h \
  /work/github-tomwei/kernel-4.14/include/linux/bottom_half.h \
  /work/github-tomwei/kernel-4.14/include/linux/spinlock_types.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/spinlock_types.h \
  /work/github-tomwei/kernel-4.14/include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/lockdep/crossrelease.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rwlock_types.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/spinlock.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/lse.h \
    $(wildcard include/config/as/lse.h) \
    $(wildcard include/config/arm64/lse/atomics.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/alternative.h \
    $(wildcard include/config/arm64/uao.h) \
    $(wildcard include/config/foo.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/cpucaps.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/insn.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/fpsimd.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/hw_breakpoint.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/cpufeature.h \
  /work/github-tomwei/kernel-4.14/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/jump_label.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/virt.h \
    $(wildcard include/config/arm64/vhe.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/sections.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/sections.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/pgtable/levels.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rwlock.h \
  /work/github-tomwei/kernel-4.14/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /work/github-tomwei/kernel-4.14/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/atomic.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/atomic_ll_sc.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/cmpxchg.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/atomic-long.h \
  /work/github-tomwei/kernel-4.14/include/linux/wait.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/wait.h \
  /work/github-tomwei/kernel-4.14/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /work/github-tomwei/kernel-4.14/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /work/github-tomwei/kernel-4.14/include/linux/seqlock.h \
  /work/github-tomwei/kernel-4.14/include/linux/nodemask.h \
  /work/github-tomwei/kernel-4.14/include/linux/bitmap.h \
  /work/github-tomwei/kernel-4.14/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /work/github-tomwei/kernel-4.14/include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/sparsemem.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/page.h \
  /work/github-tomwei/kernel-4.14/include/linux/personality.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/personality.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/pgtable-types.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/5level-fixup.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/getorder.h \
  /work/github-tomwei/kernel-4.14/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /work/github-tomwei/kernel-4.14/include/linux/notifier.h \
  /work/github-tomwei/kernel-4.14/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /work/github-tomwei/kernel-4.14/include/linux/osq_lock.h \
  /work/github-tomwei/kernel-4.14/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/arm64/include/generated/asm/rwsem.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/rwsem.h \
  /work/github-tomwei/kernel-4.14/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /work/github-tomwei/kernel-4.14/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rcutree.h \
  /work/github-tomwei/kernel-4.14/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /work/github-tomwei/kernel-4.14/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /work/github-tomwei/kernel-4.14/include/linux/ktime.h \
  /work/github-tomwei/kernel-4.14/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /work/github-tomwei/kernel-4.14/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  arch/arm64/include/generated/asm/div64.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/div64.h \
  /work/github-tomwei/kernel-4.14/include/linux/time64.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/time.h \
  /work/github-tomwei/kernel-4.14/include/linux/jiffies.h \
  /work/github-tomwei/kernel-4.14/include/linux/timex.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/timex.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/param.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/param.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/param.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/timex.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/arm/arch/timer/ool/workaround.h) \
  /work/github-tomwei/kernel-4.14/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /work/github-tomwei/kernel-4.14/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/arm64/acpi/parking/protocol.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/percpu.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/percpu.h \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /work/github-tomwei/kernel-4.14/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /work/github-tomwei/kernel-4.14/include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/arm/arch/timer.h) \
  /work/github-tomwei/kernel-4.14/include/linux/timecounter.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/timex.h \
  include/generated/timeconst.h \
  /work/github-tomwei/kernel-4.14/include/linux/timekeeping.h \
  /work/github-tomwei/kernel-4.14/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rcu_segcblist.h \
  /work/github-tomwei/kernel-4.14/include/linux/srcutree.h \
  /work/github-tomwei/kernel-4.14/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /work/github-tomwei/kernel-4.14/include/linux/completion.h \
    $(wildcard include/config/lockdep/completions.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/mmzone.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/numa.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/topology.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/topology.h \
  /work/github-tomwei/kernel-4.14/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /work/github-tomwei/kernel-4.14/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rbtree.h \
  /work/github-tomwei/kernel-4.14/include/linux/mm_types.h \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/hmm.h) \
  /work/github-tomwei/kernel-4.14/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /work/github-tomwei/kernel-4.14/include/linux/auxvec.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/auxvec.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/auxvec.h \
  /work/github-tomwei/kernel-4.14/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/mmu.h \
  /work/github-tomwei/kernel-4.14/include/linux/range.h \
  /work/github-tomwei/kernel-4.14/include/linux/percpu-refcount.h \
  /work/github-tomwei/kernel-4.14/include/linux/bit_spinlock.h \
  /work/github-tomwei/kernel-4.14/include/linux/shrinker.h \
  /work/github-tomwei/kernel-4.14/include/linux/resource.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/resource.h \
  arch/arm64/include/generated/uapi/asm/resource.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/resource.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/resource.h \
  /work/github-tomwei/kernel-4.14/include/linux/page_ext.h \
    $(wildcard include/config/idle/page/tracking.h) \
  /work/github-tomwei/kernel-4.14/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/user/stacktrace/support.h) \
  /work/github-tomwei/kernel-4.14/include/linux/stackdepot.h \
  /work/github-tomwei/kernel-4.14/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /work/github-tomwei/kernel-4.14/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /work/github-tomwei/kernel-4.14/include/linux/tracepoint-defs.h \
  /work/github-tomwei/kernel-4.14/include/linux/static_key.h \
  /work/github-tomwei/kernel-4.14/include/linux/memremap.h \
  /work/github-tomwei/kernel-4.14/include/linux/ioport.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/pgtable.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/proc-fns.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/pgtable-prot.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/fixmap.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/boot.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/fixmap.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/pgtable.h \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/have/arch/huge/vmap.h) \
  /work/github-tomwei/kernel-4.14/include/linux/huge_mm.h \
  /work/github-tomwei/kernel-4.14/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /work/github-tomwei/kernel-4.14/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/migration.h) \
  /work/github-tomwei/kernel-4.14/include/linux/wait_bit.h \
  /work/github-tomwei/kernel-4.14/include/linux/kdev_t.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/kdev_t.h \
  /work/github-tomwei/kernel-4.14/include/linux/dcache.h \
  /work/github-tomwei/kernel-4.14/include/linux/rculist.h \
  /work/github-tomwei/kernel-4.14/include/linux/rculist_bl.h \
  /work/github-tomwei/kernel-4.14/include/linux/list_bl.h \
  /work/github-tomwei/kernel-4.14/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /work/github-tomwei/kernel-4.14/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /work/github-tomwei/kernel-4.14/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /work/github-tomwei/kernel-4.14/include/linux/path.h \
  /work/github-tomwei/kernel-4.14/include/linux/stat.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/stat.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/stat.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/stat.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/compat.h \
  /work/github-tomwei/kernel-4.14/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/timers.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/intel/rdt.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/livepatch.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/sched.h \
  /work/github-tomwei/kernel-4.14/include/linux/pid.h \
  /work/github-tomwei/kernel-4.14/include/linux/sem.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/sem.h \
  /work/github-tomwei/kernel-4.14/include/linux/ipc.h \
  /work/github-tomwei/kernel-4.14/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /work/github-tomwei/kernel-4.14/include/linux/highuid.h \
  /work/github-tomwei/kernel-4.14/include/linux/rhashtable.h \
  /work/github-tomwei/kernel-4.14/include/linux/jhash.h \
  /work/github-tomwei/kernel-4.14/include/linux/unaligned/packed_struct.h \
  /work/github-tomwei/kernel-4.14/include/linux/list_nulls.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/ipc.h \
  arch/arm64/include/generated/uapi/asm/ipcbuf.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/ipcbuf.h \
  /work/github-tomwei/kernel-4.14/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  arch/arm64/include/generated/uapi/asm/sembuf.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/sembuf.h \
  /work/github-tomwei/kernel-4.14/include/linux/shm.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/shm.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm64/include/generated/uapi/asm/shmbuf.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/shmbuf.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/shmparam.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/shmparam.h \
  /work/github-tomwei/kernel-4.14/include/linux/kcov.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/kcov.h \
  /work/github-tomwei/kernel-4.14/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /work/github-tomwei/kernel-4.14/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /work/github-tomwei/kernel-4.14/include/linux/timerqueue.h \
  /work/github-tomwei/kernel-4.14/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/seccomp.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/seccomp.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/unistd.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/unistd.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/unistd.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/unistd.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/seccomp.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/unistd.h \
  /work/github-tomwei/kernel-4.14/include/linux/latencytop.h \
  /work/github-tomwei/kernel-4.14/include/linux/sched/prio.h \
  /work/github-tomwei/kernel-4.14/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/signal.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/signal.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/signal.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/signal.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/signal-defs.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/sigcontext.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/siginfo.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/siginfo.h \
  /work/github-tomwei/kernel-4.14/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /work/github-tomwei/kernel-4.14/include/linux/sched/task_stack.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/magic.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/stat.h \
  /work/github-tomwei/kernel-4.14/include/linux/list_lru.h \
  /work/github-tomwei/kernel-4.14/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /work/github-tomwei/kernel-4.14/include/linux/capability.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/capability.h \
  /work/github-tomwei/kernel-4.14/include/linux/semaphore.h \
  /work/github-tomwei/kernel-4.14/include/linux/fcntl.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/fcntl.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/uapi/asm/fcntl.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/fcntl.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/fiemap.h \
  /work/github-tomwei/kernel-4.14/include/linux/migrate_mode.h \
  /work/github-tomwei/kernel-4.14/include/linux/percpu-rwsem.h \
  /work/github-tomwei/kernel-4.14/include/linux/rcuwait.h \
  /work/github-tomwei/kernel-4.14/include/linux/rcu_sync.h \
  /work/github-tomwei/kernel-4.14/include/linux/delayed_call.h \
  /work/github-tomwei/kernel-4.14/include/linux/uuid.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/uuid.h \
  /work/github-tomwei/kernel-4.14/include/linux/errseq.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/fs.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/limits.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/ioctl.h \
  arch/arm64/include/generated/uapi/asm/ioctl.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/ioctl.h \
  /work/github-tomwei/kernel-4.14/include/uapi/asm-generic/ioctl.h \
  /work/github-tomwei/kernel-4.14/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /work/github-tomwei/kernel-4.14/include/linux/percpu_counter.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/dqblk_xfs.h \
  /work/github-tomwei/kernel-4.14/include/linux/dqblk_v1.h \
  /work/github-tomwei/kernel-4.14/include/linux/dqblk_v2.h \
  /work/github-tomwei/kernel-4.14/include/linux/dqblk_qtree.h \
  /work/github-tomwei/kernel-4.14/include/linux/projid.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/quota.h \
  /work/github-tomwei/kernel-4.14/include/linux/nfs_fs_i.h \
  /work/github-tomwei/kernel-4.14/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /work/github-tomwei/kernel-4.14/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/io.h \
  arch/arm64/include/generated/asm/early_ioremap.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/early_ioremap.h \
    $(wildcard include/config/generic/early/ioremap.h) \
  /work/github-tomwei/kernel-4.14/include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/pvh.h) \
    $(wildcard include/config/xen/dom0.h) \
  /work/github-tomwei/kernel-4.14/include/xen/interface/xen.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/xen/interface.h \
  /work/github-tomwei/kernel-4.14/include/xen/arm/interface.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/xen/hypervisor.h \
  /work/github-tomwei/kernel-4.14/include/xen/arm/hypervisor.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/has/ioport/map.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /work/github-tomwei/kernel-4.14/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /work/github-tomwei/kernel-4.14/include/linux/vmalloc.h \
  /work/github-tomwei/kernel-4.14/include/linux/dma-mapping.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/need/dma/map/state.h) \
    $(wildcard include/config/dma/api/debug.h) \
  /work/github-tomwei/kernel-4.14/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /work/github-tomwei/kernel-4.14/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /work/github-tomwei/kernel-4.14/include/linux/sysfs.h \
  /work/github-tomwei/kernel-4.14/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /work/github-tomwei/kernel-4.14/include/linux/idr.h \
  /work/github-tomwei/kernel-4.14/include/linux/kobject_ns.h \
  /work/github-tomwei/kernel-4.14/include/linux/kref.h \
  /work/github-tomwei/kernel-4.14/include/linux/klist.h \
  /work/github-tomwei/kernel-4.14/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /work/github-tomwei/kernel-4.14/include/linux/pinctrl/consumer.h \
  /work/github-tomwei/kernel-4.14/include/linux/seq_file.h \
  /work/github-tomwei/kernel-4.14/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  /work/github-tomwei/kernel-4.14/include/linux/key.h \
  /work/github-tomwei/kernel-4.14/include/linux/sysctl.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/sysctl.h \
  /work/github-tomwei/kernel-4.14/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /work/github-tomwei/kernel-4.14/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /work/github-tomwei/kernel-4.14/include/linux/sched/user.h \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/net.h) \
  /work/github-tomwei/kernel-4.14/include/linux/pinctrl/pinctrl-state.h \
  /work/github-tomwei/kernel-4.14/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /work/github-tomwei/kernel-4.14/include/linux/ratelimit.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/device.h \
    $(wildcard include/config/iommu/api.h) \
  /work/github-tomwei/kernel-4.14/include/linux/pm_wakeup.h \
  /work/github-tomwei/kernel-4.14/include/linux/dma-debug.h \
  /work/github-tomwei/kernel-4.14/include/linux/dma-direction.h \
  /work/github-tomwei/kernel-4.14/include/linux/kmemcheck.h \
  /work/github-tomwei/kernel-4.14/include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/dma-mapping.h \
    $(wildcard include/config/iommu/dma.h) \
  /work/github-tomwei/kernel-4.14/include/linux/dma-fence.h \
    $(wildcard include/config/dma/fence/trace.h) \
  /work/github-tomwei/kernel-4.14/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
  /work/github-tomwei/kernel-4.14/include/linux/kmod.h \
  /work/github-tomwei/kernel-4.14/include/linux/umh.h \
  /work/github-tomwei/kernel-4.14/include/linux/elf.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/elf.h \
  arch/arm64/include/generated/asm/user.h \
  /work/github-tomwei/kernel-4.14/include/asm-generic/user.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/elf.h \
  /work/github-tomwei/kernel-4.14/include/uapi/linux/elf-em.h \
  /work/github-tomwei/kernel-4.14/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ppc64.h) \
  /work/github-tomwei/kernel-4.14/include/linux/rbtree_latch.h \
  /work/github-tomwei/kernel-4.14/arch/arm64/include/asm/module.h \
    $(wildcard include/config/arm64/module/plts.h) \
    $(wildcard include/config/dynamic/ftrace.h) \
    $(wildcard include/config/randomize/base.h) \
  /work/github-tomwei/kernel-4.14/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /work/github-tomwei/kernel-4.14/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
  /work/github-tomwei/kernel-4.14/include/linux/kmemleak.h \
  /work/github-tomwei/kernel-4.14/include/linux/kasan.h \

/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o: $(deps_/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o)

$(deps_/work/github-tomwei/test-module-arm/module-test/dma-buf-1/exporter-sg.o):
