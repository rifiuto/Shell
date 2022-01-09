#!/usr/bin/env bash
# ********************************************************************************
# Copyright © 2021 Rifiuto
# File Name: homework.sh
# Author: Rifiuto
# Email: sayno@Rifiuto
# Created: 2021-12-13 12:26:02 (CST)
# Last Update: 
#          By: 
# Description: 
 # ********************************************************************************

xuci=("a" "this" "the" "of" "and")
for i in ${xuci[@]}
do
	# 新知识，sed 调用 shell 便来那个只需要将单引号变为双引号
	sed -i "s/\<${i}\>//g" passage 
done
# 删除空行，也可以不删
sed -i '/^$/d' passage
input=$(cat passage)
awk -f homework.awk passage

# separator
