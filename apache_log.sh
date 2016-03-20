#!/bin/bash
# apache 日志分割 统计 存入MySQL

yesterday=`date -d yesterday +%Y%m%d`
d="./"
srclog="${d}access_log"
echo $srclog
[ -e ${d}logsbak/ ]

if [ $? -ne 0 ];then
	mkdir ${d}logsbak/
	echo "创建成功"
fi

dstlog="${d}logsbak/access_${yesterday}.log"

echo $dstlog

mv $srclog $dstlog

# 关起Apache进程 重载配置文件
pkill -HUP httpd

#创建临时文件
temfile=$$.txt

cat $dstlog | awk '{print $1}' | sort | uniq -c | awk '{print $2":"$1}' > $temfile

mysql="mysql -uroot -paschen1243 -D shell"


for i in `cat $temfile`
do
	ip=`echo $i | awk -F: '{print $1}'`
	count=`echo $i | awk -F: '{print $2}'`
	#sql语句中 单引号很重要
	sql="insert into ipcount (date,ip,count) values ('$yesterday','$ip','$count')"
	#echo $sql
	$mysql -e "$sql"
done

rm -rf $temfile

sql="select * from ipcount order by id desc limit 20"
$mysql -e "$sql"

#End