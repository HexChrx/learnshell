#!/bin/bash
# uniq sort 的用法

# uniq 
# -c file 打印紧挨着的重复出现的次数
# -d file 只打印重复的行

filename="access_log-20160306"

echo "统计Apache日志中所有访问ip地址的访问次数"
awk '{print $1}' $filename | sort | uniq -c | awk '{print $2"\t"$1}'
echo

# sort 
# sort file 把文件按字母升序排列
# sort -r 逆序
# sort -t: -k1 -r 将每一行按:分割 第一列排序
# -n 按数字大小排序

echo "统计Apache日志中所有访问ip地址的访问次数，逆序排序输出前十行"
awk '{print $1}' $filename | sort | uniq -c | 
awk '{print $2"\t"$1}' | sort -n -k2 -r | head | nl
echo