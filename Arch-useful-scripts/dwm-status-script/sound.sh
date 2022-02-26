sounds() {
	sound=$(amixer sget Master | awk -F "[][]" '$0~/[][]/{ gsub("%", "", $2);print $2 }')
	if [[ $sound -ge 95 && $sound -le 100 ]]
	then
		printf " %s " ${sound}
	elif [[ $sound -ge 80 && $sound -lt 95 ]]
	then
		printf " %s " ${sound}
	elif [[ $sound -ge 60 && $sound -lt 80 ]]
	then
		printf " %s " ${sound}
	elif [[ $sound -ge 45 && $sound -lt 60 ]]
	then 
		printf " %s " ${sound}
	elif [[ $sound -ge 25 && $sound -lt 45 ]]
	then 
		printf " %s " ${sound}
    elif [[ $sound -ge 0 && $sound -lt 25 ]]
	then 
		printf " %s " ${sound}
	fi			
}

sounds

