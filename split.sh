#!/bin/bash
# split行分割 使用

# split -300 file spt 将文件每300行分割成一个文件，
# 文件名都以file开头
# spt 英文字母排序 分割后文件名为 filea fileb ... filez
#

filename="access_log-20160306"

split -300 $filename access_log
ls 