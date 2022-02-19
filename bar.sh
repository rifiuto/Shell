# wifilist=$(nmcli dev wifi | awk -F"[ ]*" '$3!~/SSID/ && $1!~/*/{print $3}')
wifilist_origin=$(nmcli dev wifi | awk -F"[ ]*" '$3!~/SSID/{print $3}')
wifilists=($wifilist_origin)
for i in ${wifilists[@]};do
	printf "%s " $i
done
