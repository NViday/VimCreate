# NVIDAYTECH
# 2021
#---------------

#create_py
#Create a  .py  with header
#The header offers a section where you can 
#describe the purpose of your file

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
        current_year="# $(date +%Y/%m)"
else
        current_year="# $(date +%Y)"
fi


#get name and seperator
name="# ${header_info[0]}"
seperator="#${header_info[2]}"


#get the program name
full_filename=$1
len=${#full_filename}-3
filename="#  `echo ${full_filename:0:${len}}`"


#the shebang line
shebang="#!/bin/python3"





#create file
touch $1

#create header
#add the top lines to file
echo ${name}>>${1}
echo ${current_year}>>${1}
echo ${seperator}>>${1}
echo "">>${1}
echo ${filename}>>${1}
echo "">>${1}
echo ${seperator}>>${1}
echo "">>${1}

#add shebang line
echo ${shebang}>>${1}

#open the file with vim
vim $1
