#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/syscalls.h>
#include <linux/file.h>
#include <linux/fs.h>
#include <linux/fcntl.h>
#include <linux/uaccess.h>
#include <asm/sysreg.h>
#include <linux/unistd.h>
#include <linux/delay.h>
#include <linux/namei.h>

struct dentry *folder = NULL;

// 构造路径
//char *path = "/path/to/folder";
//struct path parent_path;
//struct nameidata nd;
//int error = kern_path(path, LOOKUP_PARENT, &parent_path);
//if (error) {
 //   printk(KERN_ERR "Failed to get parent path.\n");
 //   return -ENOENT;
//}
// 创建文件夹
//error = vfs_mkdir(parent_path.dentry->d_inode, folder, 0777);
//if (error) {
 //   printk(KERN_ERR "Failed to create folder.\n");
 //  path_put(&parent_path);
  //  return error;
//}
// 释放资源
//dput(folder);
//path_put(&parent_path);
/*extern int kern_path(const char *, unsigned, struct path *);*/
static int semi_mkdir(const char *name, umode_t mode)
{
    struct dentry *dentry;
    struct path path;
	int err;
	dentry = kern_path_create(AT_FDCWD, name, &path, LOOKUP_DIRECTORY);
	if (IS_ERR(dentry))
		return PTR_ERR(dentry);
	err = vfs_mkdir(d_inode(path.dentry), dentry, mode);
	done_path_create(&path, dentry);
	return err;
}

static int __init my_test_init(void)
{
	int ret;
	//1. create folder
    ret = semi_mkdir("/tmp/abc", S_IRUGO | S_IWUSR);
    if (ret)
        printk(KERN_ERR "Failed to create directory, errno[%d]\n", ret);
	// 2. create file read & write
	struct file *fp;
	mm_segment_t fs;
	char buf_write[16] ="tom-12345";
	char buf_read[16] = {0};
	loff_t pos;

	// create file
	fp =filp_open("/tmp/abc/test1",O_RDWR | O_CREAT,0644);
	if (IS_ERR(fp)){
		printk("create file error/n");
		return -1;
	}
	fs =get_fs();
	set_fs(KERNEL_DS);
	pos =0;
	// write buffer to file
	vfs_write(fp,buf_write, sizeof(buf_write), &pos);
	pos =0;
	// read buffer frome file
	vfs_read(fp,buf_read, sizeof(buf_read), &pos);
	printk(KERN_ERR "read: %s\n",buf_read);
	printk(KERN_ERR "tom 002\n");
	filp_close(fp,NULL);
	set_fs(fs);
	
    return ret;
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

