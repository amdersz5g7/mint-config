#!/bin/bash

function catatan() {
    lastupdate=$(date -r ~/.config/v8-mint/catatan.sh)
	printf "\nThis is a command collection that i have installed,\n"	
	printf "for ubuntu environment\n"	
	printf "\nlast updated at ${lastupdate} by my self\n"
    main
	printf "\n"
}

# source: https://unix.stackexchange.com/questions/114333/create-an-ascii-art-table-from-tabular-data
function csv_table_header () {
    table=$(echo "$1"|sed -e 's/^/,/' -e  's/$/,/' -e 's/,/,| /g' |column -t -s,)
    line=$(echo "$table" |head -n1 | sed -e 's/[^|]/-/g' -e 's/.$//' -e 's/|/+/g')
    echo ${line}
    echo "$table" | head -n1
    echo ${line}
    echo "${table}" | tail -n +2
    echo ${line}
}

function main() {
    some_csv_data='No,Command,Description
1,duf,digunakan untuk lihat size disk lebih detail 
 ,,hanya contoh bila penjelasannya panjang
,,
2,pacstall,AUR debian version
,,
3,portmaster,u/ maintain trafic network in/out based on GUI
,,https://safing.io/portmaster/'

    csv_table_header "${some_csv_data}"
}
