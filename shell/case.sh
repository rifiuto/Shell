#!/usr/bin/env bash
# ********************************************************************************
# Copyright © 2022 Rifiuto
# File Name: case.sh
# Author: Rifiuto
# Email: sayno@Rifiuto
# Created: 2022-01-17 15:55:05 (CST)
# Last Update: 
#          By: 
# Description: 
# ********************************************************************************
read -p "Input the number:" num
case $num in
	1)
		echo "周国良"
		;;
	2)
		echo "胡斌"
		;;
	3)
		echo "杨奎峰"
		;;
	4)
		echo "廖嘉伟"
		;;
	*)
		echo "Error input"
esac
