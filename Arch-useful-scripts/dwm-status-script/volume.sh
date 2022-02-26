volumes() {
	volume=$(amixer sget Capture | awk -F "[][]" 'NR==5{ gsub("%", "", $2);print $2 }')
	state=$(amixer sget Capture | awk -F "[][]" 'NR==5{ gsub("%", "", $2);print $6 }')
	if [[ "${state}" == "off" ]]
	then
		printf "\x08⏽ %d " ${volume}
	else
		printf "\x08⏽ %d " ${volume}
	fi	
}

# \08 yellow \09 red \06 green
volumes
