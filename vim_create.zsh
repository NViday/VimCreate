# N'Vida Yotcho
# 2021
#---------------

# customVim
# basically create a file with a header ( name, year ) and  
# corresponding shebang line if needed before opening 
# the file with vim

# creates only: .txt, .py, .zsh

#---------------

#!/bin/zsh
 

# get header.txt fullpathname
current_dir=`pwd`

header_path="$current_dir/header.txt"

# get filename 

full_filename=${1}

ext=${full_filename##*.}



if [ "${ext}" = "py" ]; then
	source lib/create_py.zsh ${1} ${header_path}
elif [ "${ext}" = "txt" ]; then
        source lib/create_txt.zsh ${1} ${header_path}
else
	source lib/create_zsh.zsh ${1} ${header_path}
fi


