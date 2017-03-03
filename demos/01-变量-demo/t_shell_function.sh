#!/bin/bash

# shell 函数定义格式： 

# [ function ] functionName [()]
# {
#    action
#    [return int;]    
# }


# 说明：
#  可以带 function fun() 定义， 也可以直接 fun() 定义， 不带任何参数。
#  参数返回， 可以显示加： return 返回， 如果不加， 将以最后一条命令运行结果， 作为返回值。 
#  return 后跟数值 n(0-255


demoFun(){
    echo "这是第一个 shell 函数！"
}
echo "-----函数开始执行-----"
demoFun
echo "-----函数执行完毕-----"


