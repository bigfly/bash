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
