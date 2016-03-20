#!/bin/bash
# grep的用法

filename=iftest.sh

echo "在$filename文件中有多少行匹配echo"
grep -c "echo" $filename
echo

echo "在$filename文件中有多少行匹配echo,并显示行号"
grep -n "echo" $filename
echo

echo "在$filename文件中有多少行匹配echo,并显示行号"
grep -n "echo" $filename
echo

echo -e "在$filename文件中查找echo,\033[32;40m[不区分]\033[0m大小写"
grep -n "echo" $filename
echo

echo "在$filename文件中查找 不包含 echo 的行"
grep -vn "echo" $filename
echo

echo "在$filename文件中查找符合正则表达式(以abc开头的)的行"
grep -E "^[a-c]" $filename
echo