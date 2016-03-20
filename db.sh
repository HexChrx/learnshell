#!/bin/bash
# 连接数据库

#mysql -e "非命令下执行SQL语句"

mysql="mysql -uroot -paschen1243 -Dstuman"

sql="select * from students"

$mysql -e "$sql" | awk '{print $1}'
