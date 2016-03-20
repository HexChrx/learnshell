#!/bin/bash

# 练习循环和函数

function isPrime(){
	
	for (( k = 2; k < $1; k++ )); do
		if [ $(($1%$k)) -eq 0 ];then
			return 1
		fi
	done
	return 0
}

for (( i = 2; i < 30; i++ )); do
	isPrime $i
	if [ $? -eq 0 ];then
		echo $i
	fi
done

# read -p 'please input a key: ' key

# case $key in
# 	[a-z] | [A-Z])
# 		echo "$key is letter"
# 		;;
# 	[0-9])
# 		echo "$key is a number"
# 		;;
# 	*)
# 		echo "$key is other character"
# 		;;
# esac

# 传参移位
tot=0
while [[ $# -gt 0 ]]; do
	tot=$(($tot + $1))
	shift #第一个参数删除 下一个作为第一个
done

echo $tot