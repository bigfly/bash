#!/usr/bin/expect
set user jiaocl--2709
set host blj.jdb-dev.com
set password *** #你自己的密码
set timeout 10
spawn ssh -o PreferredAuthentications=password $user@$host
expect "*assword:*"
send "$password\r"
expect "*login*"
send "ssh [lindex $argv 0]@[lindex $argv 1]\r"
expect "*assword:*"
send "[lindex $argv 2]\n"
interact