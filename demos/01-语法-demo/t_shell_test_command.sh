#!/bin/bash

# test 命令


# 1、 数值测试
num1=100
num2=100
if test $[num1] -eq $[num2]
then
    echo '两个数相等！'
else
    echo '两个数不相等！'
fi


# 2、 字符串测试

num1="mengyueping"
num2="CoderMeng"

if test $num1 = $num2
then
    echo '两个字符串相等！'
else
    echo '两个字符串不相等！'
fi



# 3、 文件测试

if test -e ./t.sh
then 
    echo '文件已存在！'
else
    echo '文件不存在！'
fi



# 4、 逻辑操作符
#  -a（与） -o（或） !（非） 将测试条件连接起来，优先级为：!最高，-a次之，-o最低

if test -e ./notFile -o -e ./t.sh
then
    echo '有一个文件存在'
else
    echo '两个文件都不存在'
fi





