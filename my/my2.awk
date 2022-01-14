BEGIN{
	RS=""
	FS="\n"
}
{
    for(i=1;i<=NF;i++){
		gsub(" ", "")
		gsub("（）","_______")
		if(index($i, "正确答案:") == 0){
			print $i, "\n"
		}
		if(index($i, "D:") != 0){
			print "|"
		}
	}
}
