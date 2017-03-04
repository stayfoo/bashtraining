#!/bin/bash


# 1、 输出重定向

# 重定向一般通过在命令间插入特定的符号来实现。 语法：
#   command1 > file1
# 上面这个命令执行 command1 然后将输出的内容存入 file1 
# 注意： 任何 file1 内的已经存在的内容将被新内容替代。 如果要将新内容添加在文件末尾， 请使用 >> 操作符。



# 终端 执行 who 命令， 会输出内容：
#

# 终端 执行 who > users 命令，它将命令的完整的输出重定向在用户文件中（users）,如果没有该文件，会自动创建：
# who > users
# 执行后，不会在终端输出信息， 这是因为输出已被从默认的标准输出设备（终端） 重定向到指定的文件 users 。

# 终端 使用 cat 命令， 查看文件内容：
# cat users

# 终端 输出重定向 会覆盖文件内容， 命令： 
#  echo "www.mengyueping.com" > users
#  cat users
#

# 终端 输出重定向 不让内容被覆盖， 可以使用 >> 追加到文件末尾， 命令： 
# echo "mengyueping"
# cat users



# 2、 输入重定向

# 同输出重定向 ， Unix 命令也可以从文件获取输入， 语法为：
# command1 < file1

# 本来需要从键盘获取输入的命令会转移到文件读取内容。 
# 注意： 输出重定向是大于号 > , 输入重定向是小于号 < .




# 3、 重定向深入：

# 一般情况下， 每个 Unix / Linux 命令运行时都会打开三个文件：
#    标准输入文件 （ stdin ） ： stdin 的文件描述符为 0 ， Unix 程序默认从 stdin 读取数据。 
#    标准输出文件 （ stdout ） ： stdout 的文件描述符为 1 ， Unix 程序默认向 stdout 输出数据。
#    标准错误文件 （ stderr ） ： stderr 的文件描述符为 2 ， Unix 程序会向 stderr 流中写入错误信息。

# 默认情况向， command > file 将 stdout 重定向到 file , command < file 将 stdin 重定向到 file .

# 如果希望 stderr 重定向到 file ， 可以这样写 ： 
# command 2 > file 
# 如果希望 stderr 追加到 file 文件末尾， 可以这样写： 
# command 2 >> file
#   2 : 表示标准错误文件 （ stderr ）

# 如果希望将 stdout 和 stderr 合并后重定向到 file ， 可以这样写： 
# command > file 2>&1
# 或者
# command >> file 2>&1

# 如果希望对 stdin 和 stdout 都重定向， 可以这样写： 
# command < file1 >file2
# command 命令将 stdin 重定向到 file1 , 将 stdout 重定向到 file2 .



# 4、 Here Document

# Here Document 是 Shell 中的一种特殊的重定向方式， 用来将输入重定向到一个交互式 Shell 脚本或程序 。
# 形式如下：
# command << delimiter
#   document
# delimiter

# 作用： 将两个 delimiter 之间的内容 （ document ） 作为输入传递给 command .
# 注意： 
#  结尾的 delimiter 一定要顶格写， 前面不能有任何字符， 后面也不能有任何字符， 包括空格和 tab 缩进。
#  开始的 delimiter 前后的空格会被忽略掉。


# 

