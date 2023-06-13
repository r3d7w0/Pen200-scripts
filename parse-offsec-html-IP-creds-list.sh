#!/bin/bash

if [[ -z $2 ]];
then 
    echo "Not enough args."
    echo ""
    echo "Example: ./parse-offsec-html-IP-creds-list.sh <file.html> <out-file.txt>"
    exit
else
    echo "Parameters passed = $1 & $2"
fi

#var html_file = $1 

new_ips=()

> $2

for line in `cat $1`
do
	if [[ $line == *"class=\"text-main-color\">"* ]]; then
		ip=$(awk -F '>' '{ print $2 }' <<<"$line" | sed 's/<\/b//')

		echo $ip >> $2
		new_ips+=$ip
		
	#else 
		#echo "not the line i want"
	fi
done

