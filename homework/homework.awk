#!/usr/bin/env awk
BEGIN{
	IGNORECASE="1"
	for(i=0;i<=31;i++){
		printf("_")
	}
	printf("\n")
	printf("|%-25s%5s\n", "Word", "Counts")

}
function change(word, index_, array){
	if(index_ in array){
		array[word "," index_]=array[word]+array[index_]
		delete array[index_]
		delete array[word]
	}
}
function fushu(word, array){
	one=word "es"
	change(word, one, array)
	two=word "s"
	change(word, two, array)
	three=substr(word, 1, length(word)-1) "ies"
	change(word, three, array)
	four=word
	count=sub("(f|fe)$", "ves", four)
	if(count != 0){
		change(word, four, array)
	}
}
{


	gsub(",", "")
	gsub("[.]", "")
	for(i=1;i<=NF;i++){
		array[tolower($i)]++
	}
	for(i in array){
		{fushu(i, array)}
	}
}
END{
	for(i in array){
		printf("|%-25s%5d|\n", i, array[i]) | "sort -k 2 -n -r"
	}
}
