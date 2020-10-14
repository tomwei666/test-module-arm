#include <linux/module.h>
#include <linux/init.h>
#include <asm/sysreg.h>

static int __init my_test_init(void)
{
		   unsigned long tcr;
		   tcr = read_sysreg(tcr_el1);
		   printk(KERN_EMERG "my first kernel module init\n");
								return 0;
}

static void __exit my_test_exit(void)
{
			printk("goodbye\n");
}

module_init(my_test_init);
module_exit(my_test_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("tom");
MODULE_DESCRIPTION("my test kernel module");
MODULE_ALIAS("mytest");

