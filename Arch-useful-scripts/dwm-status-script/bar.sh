#!/bin/bash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
black=#1e222a
green=#7eca9c
white=#abb2bf
grey=#282c34
blue=#7aa2f7
red=#d47d85
darkblue=#668ee3


battery() {
	get_capacity=$(acpi | awk -F"[: ,]*" 'NR==1{ gsub("%", "");print $4}')
	state=$(acpi | awk -F"[: ,]*" 'NR==1{ gsub("%", "");print $3}')
	if [[ "${state}" == "Discharging" ]]
	then
		if [[ $get_capacity == 100 ]]
		then
			
			printf "  ${get_capacity}"
		elif [[ $get_capacity -ge 85 && $get_capacity -lt 100 ]]
		then
			printf "   ${get_capacity}"
		elif [[ $get_capacity -ge 65 && $get_capacity -lt 85 ]]
		then
			printf "^b$darkblue^   ${get_capacity}"
		elif [[ $get_capacity -ge 35 && $get_capacity -lt 65 ]]
		then 
			printf "^b$darkblue^   ${get_capacity}"
		elif [[ $get_capacity -ge 10 && $get_capacity -lt 35 ]]
		then 
			printf "^b$darkblue^   ${get_capacity}"
		elif [[ $get_capacity -ge 0 && $get_capacity -lt 10 ]]
		then 
			printf "   ${get_capacity}"
		fi
	else
		if [[ $get_capacity == 100 ]]
		then
			printf "   ${get_capacity}"
		elif [[ $get_capacity -ge 85 && $get_capacity -lt 100 ]]
		then
			printf "   ${get_capacity}"
		elif [[ $get_capacity -ge 65 && $get_capacity -lt 85 ]]
		then
			printf "  ${get_capacity}"
		elif [[ $get_capacity -ge 35 && $get_capacity -lt 65 ]]
		then 
			printf "  ${get_capacity}"
		elif [[ $get_capacity -ge 10 && $get_capacity -lt 35 ]]
		then 
			printf "  ${get_capacity}"
		elif [[ $get_capacity -ge 0 && $get_capacity -lt 10 ]]
		then 
			printf "  ${get_capacity}"
		fi
	fi
}

# brightness() {
# 	printf "  "
# 	printf "^c$black^^b$blue^ %.0f" $(cat /sys/class/backlight/nvidia_0/brightness)
# }

# mem() {
# 	printf "^c$blue^^b$black^  "
# 	printf "^c$blue^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
# }

wlan() {
	# wifilist_origin=$(nmcli dev wifi | awk -F"[ ]*" '$3!~/SSID/{print $3}')
	# wifilists=($wifilist_origin)
	# # for i in ${wifilists[@]};do
	# # 	printf "%s " $i
	# # done

	activewifi=$(nmcli dev wifi | awk -F"[ ]*" '$0~/*/{print $3}')
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "󰤨 ^d^%s" " ${activewifi}" ;;
	down) printf "󰤭 ^d^%s" " NO" ;;
	esac
}




while true; do

	[ $interval = 0 ] || [ $(($interval % 3600)) = 0 ]
	interval=$((interval + 1))

	sleep 1 && xsetroot -name "$(volumes)"
done

.
