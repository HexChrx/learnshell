#!/bin/bash

# $1-9 9个位置参数
# $# 命令行中位置参数的个数
# $* 所有位置参数的内容
# $? 上一条命令执行后返回的状态，为0时执行成功，else则不成功
# $0 当前执行的进程/程序名

echo "$0 is running..."
echo "共有${#}个参数,分别是：${*}"

total=0
for i in $*; do
	#echo $i
	total=$(($i+$total))
	#sleep 1
done

echo $total

ls

if [[ $? == 0 ]]; then
	echo '执行成功'
else
	echo '执行失败'
fi

