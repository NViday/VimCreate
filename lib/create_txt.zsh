# NVIDAYTECH
# 2021
#---------------

#create_txt
#Create a .txt file with a header

#---------------

#!/bin/zsh


# first argument is file to create name
# second argument is header.txt full path name


#read header.txt file

header_file=$2
header_info=()

while IFS= read -r line
do 
	header_info+=( "$line" )
done < "$header_file"


#get current date
date_format=${header_info[1]}

if [ "${date_format}" = "ym" ]; then
	current_year=$(date +%Y/%m)
else
	current_year=$(date +%Y)
fi

#get name and seperator
name=${header_info[0]} 
seperator=${header_info[2]}

#create file
touch $1

#print header
echo $name>>$1
echo $current_year>>$1
echo $seperator>>$1


#open the file with vim
vim $1






