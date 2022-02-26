
battery() {
	pre=$(acpi | awk -F"[: ,]*" 'NR==2{ print $3 }')
	get_capacity=$(acpi | awk -F"[: ,]*" 'NR==2{ gsub("%", "");print $4}')
	if [[ "${pre}" == "Full" ]]
	then
		printf " ${get_capacity}"
		return 
	fi
	if [[ ${get_capacity} -eq 0 ]]
	then
		get_capacity=$(acpi | awk -F"[: ,]*" 'NR==1{ gsub("%", "");print $4}')
	fi
	
	state=$(acpi | awk -F"[: ,]*" 'NR==1{ gsub("%", "");print $3}')
	if [[ "${state}" == "Discharging" ]]
	then
		if [[ $get_capacity -eq 100 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 85 && $get_capacity -lt 100 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 65 && $get_capacity -lt 85 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 35 && $get_capacity -lt 65 ]]
		then 
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 10 && $get_capacity -lt 35 ]]
		then 
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 0 && $get_capacity -lt 10 ]]
		then 
			printf "\x09\x02 ${get_capacity}"
		fi
	else
		if [[ $get_capacity == 100 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 85 && $get_capacity -lt 100 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 65 && $get_capacity -lt 85 ]]
		then
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 35 && $get_capacity -lt 65 ]]
		then 
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 10 && $get_capacity -lt 35 ]]
		then 
			printf " ${get_capacity}"
		elif [[ $get_capacity -ge 0 && $get_capacity -lt 10 ]]
		then 
			printf " ${get_capacity}"
		fi
	fi
}

battery
