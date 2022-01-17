#!/usr/bin/env bash
# ********************************************************************************
# Copyright © 2022 Rifiuto
# File Name: zhenghan.sh
# Author: Rifiuto
# Email: sayno@Rifiuto
# Created: 2022-01-17 15:41:47 (CST)
# Last Update: 
#          By: 
# Description: 
# ********************************************************************************
echo ",article{gjn, Author =   {Grzegorz J. Nalepa}, " | awk '{ sub(/,[^,]*,/,""); print }'
