1. 错误日志:
在内核5.10中外部编译KO模块总是提示错误：no rule to make target 'scripts/module.lds'
参考链接: https://www.zhaixue.cc/kernel/kernel-module_sysmvers.html
2. 解决办法：
编译出错的大概原因是缺少一个叫做Module.symvers的文件。解决方法也很简单，在linux内核源码根目录下，使用make modules或者make all命令。
解决办法：
make ARCH=arm64 CROSS_COMPILE=/work1/github-tomwei/test-module-arm/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu- modules O=../out-linux -j12


