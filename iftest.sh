#!/bin/bash
#流程控制

#test命令 test 条件表达式
# 文件 字符串 整数值 逻辑
#文件 [操作符 文件或目录]
# -d 测试是否为目录 -f 是否为文件  -e文件或目录是否存在
# -r -w -x 测试当前用户是否有 读 写 执行权限
# -L  是否为链接文件
filename=file1
if [ -f $filename ];then 
	echo "$filename存在"
else
	echo "$filename不存在"
	touch $filename
	if [[ $? == 0 ]]; then
		echo "$filename创建成功"
	else
		echo "$filename创建失败"
	fi
fi

#整数测试 [ num1 操作符 num2 ]注意两边的空格
# -eq ==; -ne != ; -gt >; -lt < ; -le <= ; -ge >= ;   
age=30
if [ $age -ge 18 ];then
	echo "已成年"
else
	echo "未成年"
fi

bootspace=`df -Th | grep 'da1' | awk '{print $6}' | cut -d '%' -f1`
echo -n "磁盘空间使用率"
if [ $bootspace -gt 80 ];then
	echo "大于80%"
else
	echo "不大于80%"
fi

# 字符串比较 操作符 =; !=; -z 字符串为空
read -p "please input your name:" name
while [ -z $name ];do
	echo '用户名不能为空'
	read -p "please input your name:" name
done

read -p "password:" password
while [ -z $password ];do
	echo '用户名不能为空'
	read -p "password:" password
done

if [ $name = "root" ] && [ $password = "123" ];then
	echo "登录成功"
else
	echo "用户名或密码错误"
fi

week=`date +%w`
case $week in
	1)
	echo '周一'
	;;
	2)
	echo '周二'
	;;
	3)
	echo '周三'
	;;
	4)
	echo '周四'
	;;
	5)
	echo '周五'
	;;
	6)
	echo '周六'
	;;
	7)
	echo '周天'
	;;
	*)
	echo "错误"
	;;
esac