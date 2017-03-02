#!/bin/bash

#算术运算符、关系运算符、布尔运算符、字符串运算符、文件测试运算符
#原生 bash 不支持简单的数学运算，但是可以通过其他命令来实现，例如： awk expr .
# expr 是一款表达式计算工具， 使用它能完成表达式的求值操作。

val=`expr 2 + 2`
echo "两个数之和为：$val"  #结果： 4

#注意：表达式和运算符之间要有空格；完整的表达式要被 ` ` （反引号）包含。


# 1、 算术运算符 
a=10
b=20
echo "a: $a      b: $b"

val=`expr $a + $b`
echo "a + b : $val"  #结果：30

val=`expr $a - $b`
echo "a - b : $val"  #结果：-10

val=`expr $a \* $b`
echo "a * b : $val"  #结果：200

val=`expr $b / $a`
echo "b / a : $val"  #结果：2

val=`expr $b % $a`
echo "b % a : $val"  #结果：0

if [ $a == $b ]
then
    echo "a 等于 b"
fi
if [ $a != $b ]
then
    echo "a 不等于 b"
fi


# 注意： * 前边必须加上反斜杠 \ ， 才能实现乘法运算。
# if...then...fi 是条件语句。
# mac 中 shell 的expr 语法是： $((表达式))， 此处表达式中的 * 不需要转义符号 \ 。


# 2、 关系运算符
# 关系运算符只支持数字，不支持字符串，除非字符串的值是数字。
# 

a=10
b=20

if [ $a -eq $b ]
then
    echo "$a -eq $b : a 等于 b"
else
    echo "$a -eq $b : a 不等于 b"
fi



if [ $a -ne $b ]
then
    echo "$a -ne $b : a 不等于 b"
else
    echo "$a -ne $b : a 等于 b"
fi


if [ $a -gt $b ]
then
    echo "$a -gt $b : a 大于 b"
else
    echo "$a -gt $b : a 不大于 b"
fi


if [ $a -lt $b ]
then
    echo "$a -lt $b : a 小于 b"
else
    echo "$a -lt $b : a 不小于 b"
fi


if [ $a -ge $b ]
then
    echo "$a -ge $b : a 大于或等于 b"
else
    echo "$a -ge $b : a 小于 b"
fi


if [ $a -le $b ]
then
    echo "$a -le $b : a 小于或等于 b"
else
    echo "$a -le $b : a 大于 b"
fi



# 3、 布尔运算符

a=10
b=20

if [ $a != $b ]
then
    echo "$a != $b : a 不等于 b"
else
    echo "$a != $b : a 不等于 b"
fi


if [ $a -lt 100 -a $b -gt 15 ]
then
    echo "$a -lt 100 -a $b -gt 15 : 返回 true"
else
    echo "$a -lt 100 -a $b -gt 15 : 返回 false"
fi


if [ $a -lt 100 -o $b -gt 100 ]
then
    echo "$a -lt 100 -o $b -gt 100 : 返回 true"
else
    echo "$a -lt 100 -o $b -gt 100 : 返回 false"
fi


if [ $a -lt 5 -o $b -gt 100 ]
then
    echo "$a -lt 100 -o $b -gt 100 : 返回 true"
else
    echo "$a -lt 100 -o $b -gt 100 : 返回 false"
fi



# 4、 逻辑运算符

a=10
b=20


if [[ $a -lt 100 && $b -gt 100 ]]
then
    echo "返回 true"
else
    echo "返回 false"
fi


if [[ $a -lt 100 || $b -gt 100 ]]
then
    echo "返回 true"
else
    echo "返回 false"
fi



# 5、 字符串运算符

