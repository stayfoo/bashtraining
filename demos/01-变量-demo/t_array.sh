#!/bin/bash

# shell数组
# () :表示数组，数组元素用 空格 分隔开。
#仅支持一维数组（不支持多维数组），初始化时不需要定义数组的大小。
#下标可以是整数 或 算术表达式。
array_name=(name_value0 name_value1 name_value2 name_value3)

#可以单独定义数组的各个元素：
#可以不使用连续的下标，而且下标的范围没有限制
array_site[0]=website0
array_site[2]=website2


# 1、 读取数组
# ${数组名[下标]} 
name_0=${array_name[0]}
echo ${name_0}      #结果： name_value0

site_0=${array_site[2]}
echo ${site_0}      #结果： website0

#使用 @ 符号可以获取数组中的所有元素
echo "数组的元素为：${array_name[@]}" #结果： name_value0 name_value1 name_value2 name_value3
echo "数组的元素为：${array_name[*]}" #结果： name_value0 name_value1 name_value2 name_value3


# 2、 获取数组的长度
#同字符串长度获取
arrary_name_length=${#array_name[@]}  #获取数组元素的个数
echo ${arrary_name_length}              #结果：4  

arrary_name_length=${#array_name[*]}  #获取数组元素的个数
echo ${arrary_name_length}              #结果：4

array_name0_length=${#array_name[0]}  #获取数组单个元素的长度
echo ${array_name0_length}              #结果：11

