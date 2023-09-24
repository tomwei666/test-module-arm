#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/workqueue.h>
#include <linux/delay.h>
#include <linux/dma-buf.h>
#include <linux/slab.h>
struct ion_data {
	int npages;
	struct page *pages[];
};

static int __init my_driver_init(void)
{
    pr_info("=========debug begin========\n");
	struct sg_table *table;
	struct scatterlist *sg;
	struct ion_data *data;
	int i,npages=3;
	table = kmalloc(sizeof(*table), GFP_KERNEL);
	sg_alloc_table(table, npages, GFP_KERNEL);
	sg = table->sgl;
	data = kmalloc(sizeof(*data) + npages * sizeof(struct page *),GFP_KERNEL);
	for (i = 0; i < npages; i++)
		data->pages[i] = alloc_page(GFP_KERNEL);
	data->npages = npages;
	sg = table->sgl;
	for (i = 0; i < npages; i++) { 
		sg_set_page(sg, data->pages[i], PAGE_SIZE, 0);
		sg = sg_next(sg);
	}
	
	


    return 0;
}

static void __exit my_driver_exit(void)
{

}

module_init(my_driver_init);
module_exit(my_driver_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("tom");
MODULE_DESCRIPTION("my test kernel module");
MODULE_ALIAS("mytest");

