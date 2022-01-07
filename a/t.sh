#!/usr/bin/env bash
# ********************************************************************************
# Copyright © 2022 Rifiuto
# File Name: t.sh
# Author: Rifiuto
# Email: sayno@Rifiuto
# Created: 2022-01-07 11:53:06 (CST)
# Last Update: 
#          By: 
# Description: 
# ********************************************************************************
for item in `ls .`
do
	result=$(cat $item | grep "123456")
	if [ -n "$result" ] && [ "${item##*.}" != "sh" ]
	then
		echo $item
	fi
done
