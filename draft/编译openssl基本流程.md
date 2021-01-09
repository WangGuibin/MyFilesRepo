# 编译openssl基本流程

1. 去官网下载源码
2. 解压打开目录，创建openssl_arm64文件夹，然后./configure  --prefix=openssl_arm64 会生成MakeFile
3.修改MakeFile里面的编译配置，然后执行make ，再然后执行make install

至于编译配置如何配置，可以网上查询一波或者采用脚本进行编译
4. 编译完如果存在不同的架构则需要重复操作一遍，需要合并生成的静态库。