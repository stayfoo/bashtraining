#!/bin/bash

#1、变量的定义 变量的使用
your_name="www.mengyueping.com" #定义变量,前面不加$
echo $your_name       #使用一个定义过的变量
your_name="CoderMeng" #修改变量值，前面不加$
echo ${your_name}     #使用一个定义过的变量，$:使用变量时前面加,{}:帮助解释器识别变量的边界，推荐使用

#2、只读变量
my_site="mengyueping.com"
readonly my_site
my_site="Coder_Meng"  #结果： ./t_variable.sh: line 12: my_site: readonly variable

#3、删除变量
unset your_name   #注意：变量删除后不能被再次使用。
echo ${your_name} #结果 空行
echo ${my_site}   #结果：mengyueping.com  .  注意：unset 不能删除只读变量

