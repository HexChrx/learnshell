#!/bin/bash
#shell 的输入输出功能
# echo -e  解析转义字符 

echo "my name is \n Hex"

echo -e "my name is \n Hex"
# echo -e 解析颜色代码 \033[前景色;背景色m内容\033[0m 恢复系统默认颜色
echo -e "httpd process       \033[32;40m[ok]\033[0m"

# echo -n 行尾不换行输出
#echo -n "please input your name: "
#read name
#echo "your input name is $name"

# 键盘输入 read -p "描述" name(变量)
#read -p "please input something: " var
#echo "your input content is $var"

# more  
# head n 输出前n行
# tail n 输出后n行

#cat<<x   x 保持中间内容格式不变  heredoc
cat<<x
A、aaa    B、bbb
C、ccc    D、rrr
x

# tee text  将输出保存到文件中
# nl 输出加上行号
cat /etc/passwd | head | nl tee