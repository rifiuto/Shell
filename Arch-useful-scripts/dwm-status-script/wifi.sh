wlan() {
	# wifilist_origin=$(nmcli dev wifi | awk -F"[ ]*" '$3!~/SSID/{print $3}')
	# wifilists=($wifilist_origin)
	# # for i in ${wifilists[@]};do
	# # 	printf "%s " $i
	# # done
	nmuber=$(nmcli dev wifi | wc -l)
	activewifi=$(nmcli dev wifi | awk -F"[ ]*" '$0~/*/{print $3}')
	if [[ number == 1 ]]
	then
		printf "睊 %s " "NO"
	else
		case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
			up) printf " %s " "${activewifi}" ;;
			down) printf "睊 %s " "NO" ;;
		esac
	fi
}
wlan
