#!/bin/bash
# awk
# $0 所有列 $1：第一列
# -F分隔符
# NR 行号
# END 跳到最后
filename="/etc/passwd"

#cat $filename | cut -d: -f1

echo "找出$filename文件中的第一列"
cat $filename | head -5 | awk -F: '{print $1 "=>" $6}' | nl
echo

echo "获取第二行"
df | awk '{if(NR == 2) {print $1 ":" $5}}'
echo

echo "总共有多少行即最后一行的行号"
cat $filename | awk 'END{ print NR}'
echo 

#sed

echo "只打印第二行"
sed -n '2'p $filename
echo 

echo "不打印第1行到第4行"
sed '1,4'd $filename  | nl
echo 

echo "只打印第1行到第4行"
sed -n '1,4'p $filename | nl
echo 

echo "打印第1行到第出现sync的行"
sed -n '1,/sync/'p $filename | nl
echo 

