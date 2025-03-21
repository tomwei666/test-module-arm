#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/list.h>
#include <linux/slab.h>

struct my_node {
    struct list_head list;
    int data;
};

static LIST_HEAD(my_list);  // 定义并初始化链表头

static int __init list_example_init(void)
{
    struct my_node *node,*node1,*node2;
    struct my_node *tmp;
	node = kmalloc(sizeof(*node), GFP_KERNEL);
	INIT_LIST_HEAD(&node->list);
	node->data = 1;
	list_add_tail(&node->list, &my_list);
	node1 = kmalloc(sizeof(*node), GFP_KERNEL);
	INIT_LIST_HEAD(&node1->list);
	node1->data = 2;
	list_add_tail(&node1->list, &my_list);
	node2 = kmalloc(sizeof(*node), GFP_KERNEL);
	INIT_LIST_HEAD(&node2->list);
	node2->data = 3;
	list_add_tail(&node2->list, &my_list);
	printk(KERN_ERR "&my_list=%llx next=%llx prev=%llx\n",&my_list,my_list.next,my_list.prev);
	printk(KERN_ERR "&node=%llx node=%llx &(node->list)=%llx &(node->data)=%llx\n",&node,node,&(node->list),&(node->data));
	printk(KERN_ERR "&node1=%llx node1=%llx &(node1->list)=%llx &(node1->data)=%llx\n",&node1,node1,&(node1->list),&(node1->data));
	printk(KERN_ERR "&node2=%llx node2=%llx &(node2->list)=%llx &(node2->data)=%llx\n",&node2,node2,&(node2->list),&(node2->data));

    printk(KERN_INFO "Traversing the list:\n");
    list_for_each_entry(tmp, &my_list, list)
		printk(KERN_INFO "Data: %d tmp=%llx next=%llx prev=%llx\n", tmp->data, tmp,tmp->list.next,tmp->list.prev);

    return 0;
}

static void __exit list_example_exit(void)
{
    struct my_node *node, *tmp;

    // 删除并释放节点
    list_for_each_entry_safe(node, tmp, &my_list, list) {
		list_del(&node->list);
		kfree(node);
    }

    printk(KERN_INFO "Module unloaded, list cleared.\n");
}

module_init(list_example_init);
module_exit(list_example_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("ChatGPT");
MODULE_DESCRIPTION("Example of using list_for_each_entry");
