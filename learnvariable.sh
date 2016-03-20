#!/bin/bash
#变量定义
day='sunday'
#变量使用
echo "Today is ${day}dd"
#读入

read -p "please input you name: " name

echo "Your input name is $name"

#"" 可以解析变量 都不能解析转意字符
#'' $作为普通字符 不能解析转意字符
#`` 执行命令
echo "Your name is $name"
echo 'Your name is $name'
echo "Today is "`date`

