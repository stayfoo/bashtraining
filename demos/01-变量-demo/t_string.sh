#!/bin/bash

echo -----------------------------------"字符串"

#1、shell字符串
#单引号字符串：任何字符都会原样输出；单引号里面的变量是无效的；不能出现单引号（对单引号使用转义符也不行）；
str_1='this is a shell string'  

#双引号字符串：字符里面可以有变量；里面可以出现转义字符；
your_name='www.mengyueping.com'
str_2="Hello, this is my website,\"$your_name\"! \n"


#1.1、拼接字符串
str_3="Hello, ${your_name}!"
echo $str_3                    #结果：Hello, www.mengyueping.com!
autho_name="CoderMeng"
str_4="Hello, "$autho_name" !" #结果：Hello, CoderMeng !
echo $str_4


#1.2、获取字符串长度
echo ${#autho_name}  #结果：9


#1.3、提取字符串
echo ${autho_name:0:5} #结果：Coder 。 从第0个字符开始截取4个字符


#1.4、查找子字符串
# echo `expr index "$autho_name" Me`   #mac： expr: syntax error

