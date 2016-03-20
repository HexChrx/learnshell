#!/bin/bash

# 文本处理

# find  find 目录 类型 参数;-name 名字  -type 类型
echo "查找名字以sh结尾的"
find -name "*.sh"

echo "寻找名字以[a-z]开头的"
find -name "[a-z]*" #

echo "查找属性为755的文件"
find -perm 755 #

echo "查找当前目录下属于root用户的文件"
find -user root #

echo "查找当前目录下类型是文件的 f：文件 d：目录 l:链接"
find . -type f

echo "查找/var下更改时间是5天之内的"
find /var -mtime -5 | xargs ls -l | head | nl

echo "查找/var下更改时间是3天以前的"
find /var -mtime +3 | xargs ls -l | head | nl 

echo "查找当前目录下文件大小大于1M的，100 0000个字节"
find . -size +1000000c

echo "查找文件并执行xargs后面的命令"
find -type f | xargs ls -l


# sed 行定位

# Sort 排序

# uniq 去重

# split 分离
