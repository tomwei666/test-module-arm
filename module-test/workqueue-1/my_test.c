#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/workqueue.h>
#include <linux/delay.h>

static struct workqueue_struct *my_workqueue;
static struct delayed_work my_delayed_work;

static void my_work_handler(struct work_struct *work)
{
    pr_info("Delayed work executed\n");
}

static int __init my_driver_init(void)
{
    pr_info("Initializing my driver\n");

    my_workqueue = create_workqueue("my_workqueue");
    if (!my_workqueue)
        return -ENOMEM;

    INIT_DELAYED_WORK(&my_delayed_work, my_work_handler);

    // 安排延迟工作
    if (schedule_delayed_work(&my_delayed_work, msecs_to_jiffies(5000))) {
        pr_info("Delayed work scheduled\n");
    } else {
        pr_info("Failed to schedule delayed work\n");
        destroy_workqueue(my_workqueue);
        return -EFAULT;
    }

    // 取消延迟工作
    if (cancel_delayed_work_sync(&my_delayed_work)) {
        pr_info("Delayed work canceled\n");
    } else {
        pr_info("Failed to cancel delayed work\n");
        destroy_workqueue(my_workqueue);
        return -EFAULT;
    }
	// mutex锁
	//static DEFINE_MUTEX(my_mutex);  // 定义互斥锁
	//mutex_lock(&my_mutex);
	//pr_info("Inside critical section\n");
	//mutex_unlock(&my_mutex);

    return 0;
}

static void __exit my_driver_exit(void)
{
    pr_info("Exiting my driver\n");

    destroy_workqueue(my_workqueue);
}

module_init(my_driver_init);
module_exit(my_driver_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("tom");
MODULE_DESCRIPTION("my test kernel module");
MODULE_ALIAS("mytest");

