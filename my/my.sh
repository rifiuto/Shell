#!/usr/bin/env bash
# ********************************************************************************
# Copyright © 2022 Rifiuto
# File Name: my.sh
# Author: Rifiuto
# Email: sayno@Rifiuto
# Created: 2022-01-14 18:21:07 (CST)
# Last Update: 
#          By: 
# Description: 
# ********************************************************************************
input_answers=$(awk -f my.awk my)
answers=($input_answers)
question=$(awk -f my2.awk my)
OLD_IFS="$IFS"
IFS="|"
questions=($question)
IFS="$OLD_IFS"
length=${#questions[@]}
for((i=0;i<$length;i++))
do
	real_answer=${answers[$i]}
	timu=(${questions[$i]})
	for j in ${timu[@]}
	do
		echo $j
	done
	read -p "Please input your answer:" answer
	if [[ "$answer" == "${real_answer}" ]] || [[ "${answer^^}" == "${real_answer}" ]] # transform lower to upper
	then
		echo "Right"
	else
		echo "Error, the correct answer is ${real_answer}"
	fi
done

# for i in ${questions[@]}
# do
# 	echo $i
# 	read -p "input your answer" answer
# done

