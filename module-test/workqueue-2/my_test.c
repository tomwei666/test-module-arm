#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>
#include <linux/workqueue.h>
#include <linux/delay.h>
#include <linux/slab.h>

static struct workqueue_struct *my_workqueue;
/*static struct delayed_work my_delayed_work;*/
typedef struct __sdrv_deser_dev {
	struct delayed_work hotplug_work;
	struct mutex lock;
} deser_dev_t;
static void hotplug_delayed_work(struct work_struct *work)
{
	struct delayed_work *dwork = to_delayed_work(work);
	deser_dev_t *sensor = container_of(dwork, deser_dev_t,hotplug_work);
    pr_info("thread try to lock\n");
	mutex_lock(&sensor->lock);
    pr_info("thread locked\n");
	mutex_unlock(&sensor->lock);
	schedule_delayed_work(&sensor->hotplug_work, msecs_to_jiffies(200));
}

static int __init my_driver_init(void)
{
	deser_dev_t *sensor;
	sensor = kmalloc(sizeof(*sensor), GFP_KERNEL);
    pr_info("main try to lock\n");
	mutex_init(&sensor->lock);
	INIT_DELAYED_WORK(&sensor->hotplug_work, hotplug_delayed_work);
	mutex_lock(&sensor->lock);
    pr_info("main locked\n");
	schedule_delayed_work(&sensor->hotplug_work, msecs_to_jiffies(200));
    pr_info("After schedule a workqueue\n");
	msleep(5000);
	mutex_unlock(&sensor->lock);
    pr_info("main unlocked\n");

	if (!sensor) {
        pr_info("Failed to allocate memory\n");
        return -ENOMEM;
    }
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

