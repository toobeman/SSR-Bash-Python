#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

#Check Root
[ $(id -u) != "0" ] && { echo "Error: You must be root to run this script"; exit 1; }


	read -p "输入端口号： " uid
	cd /usr/local/shadowsocksr
	python mujson_mgr.py -d -p $uid
	echo "已成功删除端口号为 $uid 的用户流量"
