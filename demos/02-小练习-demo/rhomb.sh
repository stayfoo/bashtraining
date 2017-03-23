#!/bin/bash


MAX_NO=0

echo -n "输入数字 5-9 之间："
read MAX_NO

if !([ $MAX_NO -ge 5 -a $MAX_NO -le 9 ])
then
    echo "请输入 5-9 ，再次输入："
    exit 1
fi

clear

echo "输入的数字是：$MAX_NO "


if [ [ $MAX_NO % 2 ] == 0 ]
then
    midnum=($MAX_NO / 2)
    echo "1-数字：$midnum"
else
    midnum=($MAX_NO + 1) / 2
    echo "2-数字：$midnum"
fi


for ((i=1;i < $MAX_NO;i++))
do
    if [[ $i -le midnum ]]; then
        for ((j=$(($MAX_NO-i));j > i;j--))
        do
            echo -n " ";
        done
        for ((m = 1; m <= $((2*i-1));m++))
        do
            echo -n "* "
            # echo -n "$i "
        done
        echo ""
    elif [[ $i -gt midnum ]]; then
        n=$(($MAX_NO-i))
        for ((j = $(($MAX_NO - n));j > n; j--))
        do
            echo -n " ";
        done
        for ((m = 1; m <= $((2 * n - 1)); m++))
        do
            echo -n "* "
            # echo -n "$i "
        done
        echo ""
    fi
done



echo -e "\n\n www.mengyueping.com. CoderMeng is always there."
