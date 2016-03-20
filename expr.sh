#!/bin/bash

#expr 常用运算符
# + add
# - 减法
# \* 乘法
# / 除法
# % 取余

total=0
for i in $*; do
	total=`expr $i + $total \* 10`
done

echo $total

while [[ $total > 0 ]]; do
	echo `expr $total % 10`
	total=`expr $total / 10`
done
