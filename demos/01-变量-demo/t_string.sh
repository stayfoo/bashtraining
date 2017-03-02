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

echo ------------------------------------"数组"

#2、 shell数组
# () :表示数组，数组元素用 空格 分隔开。
#支持一维数组（不支持多维数组），没有限定数组的大小。
#下标可以是整数 或 算术表达式。
array_name=(name_value0 name_value1 name_value2 name_value3)

#可以单独定义数组的各个元素：
#可以不使用连续的下标，而且下标的范围没有限制
array_site[0]=website0
array_site[2]=website2


#2.1、 读取数组
# ${数组名[下标]} 
name_0=${array_name[0]}
echo ${name_0}      #结果： name_value0
site_0=${array_site[2]}
echo ${site_0}      #结果： website0

#使用 @ 符号可以获取数组中的所有元素
echo ${array_name[@]} #结果： name_value0 name_value1 name_value2 name_value3


#2.2、 获取数组的长度
#同字符串长度获取
arrary_name_length=${#array_name[@]}  #获取数组元素的个数
echo ${arrary_name_length}              #结果：4  

arrary_name_length=${#array_name[*]}  #获取数组元素的个数
echo ${arrary_name_length}              #结果：4

array_name0_length=${#array_name[0]}  #获取数组单个元素的长度
echo ${array_name0_length}              #结果：11

