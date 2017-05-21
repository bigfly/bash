#! /bin/bash

str=123
echo "hello abc"
echo $str

function hello {
   echo world!
}
hello

function say {
    echo $1$2
}
say "argument1" "argument2"



# cat filename
# cat file1 file2 > newcombinedfile  #merge
# cat < file1 > file2 #copy file1 to file2

# chmod -options filename

# cp filename1 filename2

# diff filename1 filename2

# find . -name README.md
# find /home/user1 -name '*.png'

# sed -i "s/demo/"$project_name"/g"  ./config/dev/web.php
# sed 's/[0-9]/d/g' example.txt

# cat example.txt | tr 'a-z' 'A-Z' 

# scp user@host:directory/source_file target_file
# scp -r user@host:directory/source_folder target_folder

# ssh user@host

# export code="/Users/zhaohanyu/Desktop/JDB/code"
# export study="/Users/zhaohanyu/Desktop/JDB/code/study"

# echo export code="/Users/zhaohanyu/Desktop/JDB/code" >> ~/.bash_profile
# source ~/.bash_profile 
