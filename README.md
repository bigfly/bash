# bash
### bash Introduce

##### shell是你（用户）和Linux（或者更准确的说，是你和Linux内核）之间的接口程序。你在提示符下输入的每个命令都由shell先解释然后传给Linux内核。    

#### sh命令是shell命令语言解释器，执行命令从标准输入读取或从一个文件中读取。通过用户输入命令，和内核进行沟通！Bourne Again Shell （即bash）是自由软件基金会（GNU）开发的一个Shell，它是Linux系统中一个默认的Shell。Bash不但与Bourne Shell兼容，还继承了C Shell、Korn Shell等优点。   

#### 在Linux 和 UNIX系统里可以使用多种不同的shell可以使用。最常用的几种是 Bourne shell (sh), C shell (csh), 和 Korn shell (ksh)。三种shell 都有它们的优点和缺点。    

####  Bourne Again shell (bash), 正如它的名字所暗示的，是 Bourne shell 的扩展。

#### sh解释器    
```
/bin/sh
```

#### sh和bash的关系   
bash是sh的增强版本
在我们所使用的系统当中，使用sh调用执行脚本，相当于打开了bash的POSIX标准模式 （等效于bash的 --posix 参数）
一般的，sh是bash的“子集” 

#### 输入重定向   
```
cat < test.js > output
```

#### 输出重定向   
```
ls > directory.out 
```

#### 管道    
```
cat sample.text | grep "High" | wc -l
```

#### 修改环境变量  
```
zsh 
vi ~/.zshrc(mac是~/.bash_profile)    
可以在这个文件的最后加入：    
export PATH="~/.composer/vendor/bin:$PATH"   
source ~/.zshrc  
```

#### source和sh的区别
1. sh filename 重新建立一个子shell，在子shell中执行脚本里面的语句，该子shell继承父shell的环境变量，但子shell新建的、改变的变量不会被带回父shell，除非使用export。
2. source filename：这个命令其实只是简单地读取脚本里面的语句依次在当前shell里面执行，没有建立新的子shell。那么脚本里面所有新建、改变变量的语句都会保存在当前shell里面。

#### test:   
1. 新建一个source.sh脚本，内容为:A=1
2. 运行sh source.sh后，echo $A，显示为空，因为A=1并未传回给当前shell
3. 运行source source.sh 或者 . source.sh，然后echo $A，则会显示1，说明A=1的变量在当前shell中

#### 常见指令:    

# sed  
file 替换文本中的字符串:   
```
sed 's/book/books/'   
``` 
-n选项和p命令一起使用表示只打印那些发生替换的行:   
```
sed -n 's/test/TEST/p' file    
```
使用后缀 /g 标记会替换每一行中的所有匹配:
```
sed 's/book/books/g' file    
``` 
当需要从第N处匹配开始替换时，可以使用 /Ng:
```
echo sksksksksksk | sed 's/sk/SK/2g'    
``` 
删除文件的第2行:
```
sed '2d' file 
```    
删除文件的第2行到末尾所有行:
```
sed '2,$d' file    
```
http://www.1987.name/306.html

# expect   
```
#!/usr/bin/expect

send [lindex $argv 0]@[lindex $argv 1]
set timeout 30
spawn ssh [lindex $argv 0]@[lindex $argv 1]
expect {
        "(yes/no)?"
        {send "yes\n";exp_continue}
        "password:"
        {send "[lindex $argv 2]\n"}
}
interact
```

# zsh   
```
vim ~/.zshrc
```   


# sh命令基础    
http://man.linuxde.net/sh    
https://github.com/Idnan/bash-guide
