#!/bin/bash

# Shell 流程控制

# 1、 if 语法格式：
#if condition
#then
#    command1
#    command2
#    ...
#    commandN
#fi

#写成一行：
# if [ $(ps -ef | grep -c "ssh") -gt 1 ]; then echo "true"; fi


# 2、 if else 语法格式：

#if condition
#then
#    command1
#    command2
#    ...
#    commandN
#else
#    command
#fi



# 3、 if else-if else 语法格式：

#if condition1
#then
#    command1
#elif condition2
#then
#    command2
#else
#    commandN
#fi


a=10
b=20

if [ $a == $b ]
then 
    echo "a 等于 b"
elif [ $a -gt $b ]
then
    echo "a 大于 b"
elif [ $a -lt $b ]
then
    echo "a 小于 b"
else
    echo "没有符合的条件"
fi


# if else 语句经常与 test 命令结合使用

num1=$[2 * 3]
num2=$[1 + 5]
if test $[num1] -eq $[num2]
then
    echo '两个数字相等！'
else
    echo '两个数字不相等'
fi



# 4、 for 循环 语法格式：

# for var in item1 item2 ... itemN
# do
#    command1
#    command2
#    ...
#    commandN
# done


# 写成一行：
# for var in item1 item2 ... itemN; do command1; command2 ... done;

# 说明：
#   当变量值在列表里， for 循环即执行一次所有命令， 使用变量名获取列表中的当前取值。
#   命令可为任何有效的 shell 命令和语句。 
#   in 列表可以包含替换、字符串 和 文件名。 
#   in 列表是可选的， 如果不用它， for 循环使用命令行的位置参数。


# 顺序输出当前列表中的数字：
for loop in 1 2 3 4 5
do 
    echo "The value is : $loop"
done


# 顺序输出字符串中的字符：
for str in 'This is a string'
do 
    echo $str
done


# 5、 while 循环 语法格式：

# 用于 不断执行一系列命令
# 也用于 从输入文件中读取数据；  
# 命令通常为测试条件。


# while condition
# do 
#     command
# done

n=1
while (($n<=5))  #如果 n 小于等于 5， 那么条件返回 真 。 n 从 0 开始， 每次循环处理时， n + 1 . 
do
    echo $n
    let "n++"
done

# 说明： 使用了 Bash let 命令， 它用于执行一个或多个表达式， 变量计算中不需要加上 $ 来表示变量。


# 读取键盘信息。  输入信息被设置为变量 FILM ， 按 <Ctr-D> 结束循环。
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的电影名：'
while read FILM
do
    echo "是的！ $FILM 是一部好电影"
done



# 6、 无限循环 语法格式：

# while :
# do
#    command
# done


# while true
# do 
#    command
# done


# for (( ; ; ))




# 7、 until 循环 语法格式：

# until 循环执行一些列命令直至条件为真时停止。
# until 循环 与 while 循环在处理方式上刚好相反。
# 一般 while 优于 until ， 但极少数情况下，until 循环更加有用。 

# until condition
# do
#     command
# done

# 说明： 条件为任意测试条件，测试发生在循环末尾， 因此循环至少执行一次。



# 8、 case  语法格式：

# 多选择语句。 可以用 case 语句匹配一个值与一个模式，如果匹配成功， 执行相匹配的命令。 

# case 值 in
# 模式1)
#     command1
#     command2
#     ....
#     commandN
#     ;;
# 模式2)
#     command1
#     command2
#     ....
#     commandN
#     ;;
# esac


# 说明：
#   取值后面必须为单词 in , 每一模式必须以右括号结束。 
#   取值可以为变量或常数。 
#   匹配发现取值符合某一模式后， 其间所有命令开始执行, 直到 ;;  。
#   取值将检测匹配的每一个模式。一旦模式匹配，则执行完匹配模式相应命令后不再继续其他模式。
#       如果没有一个匹配模式， 使用星号 * 捕获该值， 再执行后面的命令。 


echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1) echo '选择了 1'
        ;;
    2) echo '选择了 2'
        ;;
    3) echo '选择了 3'
        ;;
    4) echo '选择了 4'
        ;;
    *) echo '你没有输入 1 到 4 之间的数字'
        ;;
esac



# 9、 跳出循环

# break 命令 ： 
#   允许跳出所有循环 （终止执行后面的所有循环）。

while :
do 
    echo -n "输入 1 - 5 之间的数字："
    read aNum
    case $aNum in 
        1|2|3|4|5) echo "你输入的数字为 $aNum !"
            ;;
        *) echo "你输入的数字不是 1 到 5 之间的！ 游戏结束"
            break
            ;;
    esac
done


# continue 命令  
#  不会跳出所有循环， 仅仅跳出当前循环。

while :
do
    echo -n "输入 1 - 5 之间的数字： "
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum !"
            ;;
        *) echo "你输入的数字不是 1 - 5 之间的！"
            continue
            echo "游戏结束！"   # 永远不会执行
            ;;
    esac
done





# 9、 esac

# case 的语法和 C family语言差别很大， 它需要一个esac (case反过来) 作为结束标记， 
#  每个case分支用右圆括号， 用两个分号;;表示break . 


