#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/sched.h>
#include <linux/mm.h>
#include <linux/pid.h>
#include <linux/rbtree.h>
#include <linux/sched/signal.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("Module to traverse VMA rbtree of a process");

static int pid = 1; // 默认的PID，之后可以通过模块参数传递
module_param(pid, int, 0644);
MODULE_PARM_DESC(pid, "The PID of the process to inspect");

static int __init vma_traverse_init(void)
{
    struct task_struct *task;
    struct mm_struct *mm;
    struct vm_area_struct *vma;
    struct rb_node *rb_node;

    // 通过PID获取task_struct
    task = pid_task(find_vpid(pid), PIDTYPE_PID);
    if (!task) {
        pr_err("Cannot find task with PID %d\n", pid);
        return -ESRCH;
    }

    // 获取进程的mm_struct
    mm = task->mm;
    if (!mm) {
        pr_err("Task with PID %d has no mm_struct (kernel thread?)\n", pid);
        return -EINVAL;
    }

    // 遍历红黑树mm_rb以获取所有VMA
    rb_node = mm->mm_rb.rb_node;


    pr_info("Traversing VMA rbtree for PID %d\n", pid);

	for (vma = mm->mmap; vma; vma = vma->vm_next)
		printk(KERN_INFO "vma-list VMA=%lx start: %lx, end: %lx\n",(unsigned long)vma, vma->vm_start, vma->vm_end);

    pr_info("===================================\n");

    while (rb_node) {
        vma = rb_entry(rb_node, struct vm_area_struct, vm_rb);

        // 输出VMA的信息：起始地址和结束地址
        pr_info("red-tree VMA=%lx found: start = 0x%lx, end = 0x%lx\n",(unsigned long)vma,
                vma->vm_start, vma->vm_end);

        // 左子树优先遍历
        if (rb_node->rb_left)
            rb_node = rb_node->rb_left;
        else if (rb_node->rb_right)
            rb_node = rb_node->rb_right;
        else {
            // 没有子节点时，回溯到父节点
            struct rb_node *parent = rb_node;
            do {
                parent = rb_parent(parent);
                if (parent == NULL)
                    break;
                if (parent->rb_left == rb_node) {
                    rb_node = parent->rb_right;
                    break;
                }
                rb_node = parent;
            } while (parent);
        }
    }

    return 0;
}

static void __exit vma_traverse_exit(void)
{
    pr_info("Exiting VMA traverse module\n");
}

module_init(vma_traverse_init);
module_exit(vma_traverse_exit);
