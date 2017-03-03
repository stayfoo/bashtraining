# echo 指令 ， 用于字符串的输出。

# 1、 显示普通字符串 ：
echo "It is a test!"     #结果：It is a test!
# 双引号可以省略：
echo It is a test!       #结果：It is a test!


# 2、 显示转义字符
echo "\"It is a test!\""  #结果："It is a test!"

echo \"It is a test!\"    #结果："It is a test!"


# 3、 显示变量
# read 命令，从标准输入中读取一行， 并把输入行的每个字段的值指定给 shell 变量
read name
echo "$name It is a test!"


# 4、 显示换行
echo -e "显示换行 OK! \n"  # -e 开启转义
echo "It is a test"


# 5、 显示不换行
echo -e "显示不换行 OK! \c"  # -e 开启转义  \c  不换行 
echo "It is a test"


# 6、 显示结果定向至文件
echo "It is a test!" > myfile


# 7、 原样输出字符串，不进行转义或取变量（用单引号）
echo '$name\"'             #结果：$name\"


# 8、 显示命令执行结果
echo `date`               #结果：2017年 3月 3日 星期五 10时07分56秒 CST

