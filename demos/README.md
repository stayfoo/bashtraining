# 1、 语法

`#!` ：
一个约定的标记，它告诉系统这个脚本需要什么解释器来执行，
即：使用哪一种Shell，告诉系统其后路径所指定的程序即解释此脚本文件的Shell程序。


扩展名： `.sh`

注释：
以“#”开头的行是注释，会被解释器忽略。
没有多行注释，只有单行注释。

>遇到大段的代码需要临时注释起来，过一会儿又取消注释，每一行加个`#`符号太费力了.
>
>可以把这一段要注释的代码用一对花括号括起来，定义成一个函数，没有地方调用这个函数，这块代码就不会执行，达到了和注释一样的效果。



Shell传递参数：

处理参数：

|参数处理| 说明    |
|------|---------|
|`$#`  |传递到脚本的参数个数|
|`$*`  |以一个单字符串显示所有向脚本传递的参数。如："$*"用 " 括起来的情况、以"$1 $2 … $n"的形式输出所有参数。|
|`$$`  |脚本运行的当前进程ID号|
|`$!`  |后台运行的最后一个进程的ID号|
|`$@`  |与 $* 相同，但是使用时加引号，并在引号中返回每个参数。如 "$@"用 " 括起来的情况、以"$1" "$2" … "$n" 的形式输出所有参数。|
|`$-`  |显示Shell使用的当前选项，与set命令功能相同。|
|`$?`  |显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误。|



算术运算符：

|运算符 |说明    |举例    |
|------|-------|--------|
|`+`   |加法    |`expr $10 + $20`  结果为30     |
|`-`   |减法    |`expr $10 - $20`   结果为-10   |
|`*`   |乘法    |`expr $10 \* $20`   结果为200  |
|`/`   |除法    |`expr $20 / $10`    结果为2    |
|`%`   |取余    |`expr $20 % $10`   结果为0     |
|`=`   |赋值    | a=$b  把变量b的值赋给a          |
|`==`  |相等。   | 用于比较两个数字，相同则返回true .[$a == $b] 返回 false  |
|`!=`  |不相等。 | 用于比较两个数字，不相同则返回true。[$a != &b]  返回true  | 


注意：条件表达式要放在方括号之间，并且要有空格。


关系运算符：
a=10  b=20
|运算符 |说明                                       |举例|
|------|-------------------------------------------|------|
|`-eq` |检测两个数是否相等，相等返回true                | [ $a –eq $b ] 返回 false |
|`-ne` |检测两个数是否相等，不相等返回true               | [ $a –ne $b ] 返回 true |
|`-gt` |检测左边的数是否大于右边的，如果是，则返回true 。  | [ $a –gt $b ] 返回false  |
|`-lt` |检测左边的数是否小于右边的，如果是，则返回true。   |  [ $a –lt $b ] 返回true  |
|`-ge` |检测左边的数是否大于等于右边的，如果是，则返回true |  [ $a –ge $b ] 返回false |
|`-le` |检测左边的数是否小于等于右边的，如果是，则返回true |  [ $a –le $b ] 返回true  |



布尔运算符：

|运算符 |说明   |举例         |
|------|------|---------------|
|`!`   | 非运算符，表达式为true 则返回false ,否则返回true  | [ !false ]返回true                    |
|`-o`  | 或运算，有一个表达式为true则返回true             | [ $a –lt 20 –o $b –gt 100 ] 返回true  |
|`-a`  | 与运算，两个表达式都为true才返回true             | [ $a –lt 20 –a $b –gt 100 ] 返回false |



逻辑运算符：

|运算符|说明    | 举例        |
|-----|-------|-------------|
|`&&` |逻辑AND | [[ $a –lt 100 && $b –gt 100 ]] 返回false |
|`||` |逻辑OR  | [[ $a –lt 100 || $b –gt 100 ]] 返回true  |



字符串运算符：

|运算符|说明                               |举例                    |
|-----|----------------------------------|------------------------|
|`=`  |检测两个字符串是否相等，相等返回true    | [ $a = $b ]  返回false  |
|`!=` |检测两个字符串是否相等，不相等返回true  | [ $a != $b ] 返回true   |
|`-z` |检测字符串长度是否为0，为0返回true     | [ -z $a ]返回false      |
|`-n` |检测字符串长度是否为0，不为0返回true   | [ -n $a ] 返回true       |
|`str`|检测字符串是否为空，不为空返回true     | [ $a ]  返回true         |



文件测试运算符：
文件测试运算符用于：检测Unix文件的各种属性。

|操作符     |说明         |举例|
|----------|------------|----|
|`-b file` |检测文件是否是块设备文件，如果是，则返回true                         | [ -b $file ] 返回false |
|`-c file` |检测文件是否是字符设备文件，如果是，则返回true                        | [ -c $file ] 返回false |
|`-d file` |检测文件是否是目录，如果是，则返回true                              | [ -d $file ] 返回false |
|`-f file` |检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回true  | [ -f $file ] 返回true |
|`-g file` |检测文件是否设置了SGID 位，如果是，则返回true                       |  [ -g $file ] 返回false |
|`-k file` |检测文件是否设置了粘着位（Sticky Bit）,如果是，则返回true            |  [ -k $file ] 返回false |
|`-p file` |检测文件是否是有名管道，如果是，则返回true                          |  [ -p $file ] 返回false |
|`-u file` |检测文件是否设置了SUID位，如果是，则返回true                        |  [ -u $file ] 返回false |
|`-r file` |检测文件是否可读，如果是，则返回true                               |  [ -r $file ] 返回true  |
|`-w file` |检测文件是否可写，如果是，则返回true                               |  [ -w $file ] 返回true  |
|`-x file` |检测文件是否可执行，如果是，则返回true                              |  [ -x $file ] 返回true  |
|`-s file` |检测文件是否为空（文件大小是否大于0），不为空返回true                 |  [ -s $file ] 返回true  |
|`-e file` |检测文件（包括目录）是否存在，如果是，则返回true.                    |  [ -e $file ] 返回true  |



printf的转义序列：

|序列    |说明  |
|-------|-------|
|`\a`   | 警告字符，通常为ASCII的BEL字符 |
|`\b`   | 后退 |
|`\c`   | 抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略 |
|`\f`   | 换页（formfeed）|
|`\n`   | 换行  |
|`\r`   | 回车（Carriage return）|
|`\t`   | 水平制表符  |
|`\v`   | 垂直制表符  |
|`\\`   | 一个字面上的反斜杠字符  |
|`\ddd` | 表示1到3位数八进制值的字符。仅在格式字符串中有效。  |
|`\0ddd`| 表示1到3位的八进制值字符  |




Shell test命令：

数值测试：

|参数  |说明           |
|------|--------------|
|`-eq` | 等于    则为真 |
|`-ne` | 不等于  则为真 |
|`-gt` | 大于    则为真 |
|`-lt` | 小于    则为真 |
|`-ge` | 大于等于 则为真 |
|`-le` | 小于等于 则为真 |



字符串测试：

|运算符      | 说明 |
|-----------|--------------|
|`=`        | 等于   则为真  |
|`!=`       | 不等于  则为真 |
|`-z` 字符串 | 字符串的长度为零   则为真  |
|`-n` 字符串 | 字符串的长度不为零    则为真  |



文件测试：

|操作符      | 说明 |
|-----------|------------------------------|
|`-e 文件名` | 如果文件存在          则为真    |
|`-r 文件名` | 如果文件存在且可读    则为真     |
|`-w 文件名` | 如果文件存在且可写     则为真         |
|`-x 文件名` | 如果文件存在且可执行   则为真         |
|`-s 文件名` | 如果文件存在且至少有一个字符  则为真   |
|`-d 文件名` | 如果文件存在且为目录      则为真      |
|`-f 文件名` | 如果文件存在且为普通文件  则为真       |
|`-c 文件名` | 如果文件存在且为字符型特殊文件   则为真 |
|`-b 文件名` | 如果文件存在且为块特殊文件      则为真 |



Shell 输入/输出重定向：


|命令             | 说明  |
|----------------|---------------------|
|`command>file`  | 将输出重定向到file    |
|`command<file`  | 将输入重定向file      |
|`command>>file` | 将输出以追加的方式重定向到file    |
|`n>file`        | 将文件描述符为n的文件重定向到file  |
|`n>>file`       | 将文件描述符为n的文件以追加的方式重定向到file  |
|`n>&m`          | 将输出文件m和n合并   |
|`n<&m`          | 将输入文件m和n合并   |
|`<<tag`         | 将开始标记tag和结束标记tag之间的内容作为输入   |


注意： 文件描述符0通常是标准输入（STDIN）, 1是标准输出（STDOUT）, 2是标准错误输出（STDERR）.



`Bash` 中的特殊保留字： 保留变量、随机数、运算符、变量的特殊操作

保留变量：

`$IFS` : 保存了用于分割输入参数的分割字符，默认是空格。
`$HOME` : 存储了当前用户的根目录路径。
`$PATH` : 存储了当前 Shell 的默认路径字符串。 
`$PS1` : 表示第一个系统提示符。
`$PS2` : 表示第二个系统提示符。
`$PWD` : 表示当前工作路径
`$EDITOR` : 表示系统的默认编辑器名称。
`$BASH` : 表示当前 Shell 的路径字符串。

$0, $1, $2, ...   :  表示系统传给脚本程序 或 脚本程序传给函数的第0个、第1个、第2个参数

`$#`  : 表示脚本程序的命令参数个数或函数的参数个数。
`$$`  : 表示脚本程序的进程号， 常用于生成文件名唯一的临时文件。
`$?`  : 表示脚本程序或函数的返回状态值，正常为0， 否则为非零的错误号。
`$*`  : 表示所有的脚本参数或函数参数。
`$@`  : 和 $* 相似，但是比 $* 更安全。
`$!`  : 表示最近一个在后台运行的进程的进程号。

随机数：

`$RANDOM`  : 1 - 65536 之间随机整数。 

运算符：

`+` `-` `*` `/` `%`  : 表示加减乘除和取余运算。 
`+=` `-=` `*=` `/=` 同 C 语言中的含义。
位操作符：
`<<`  `<<=`  `>>`  `>>=`  : 表示位左右移一位操作。   
`&` `&=` `|` `|=`  : 表示按位与、按位或操作。
`~ !`  :  表示非操作。     

`^`  `^=`  ： 表示异或操作。 
关系运算符：
`<` `>` `<=` `>=` `==` `!=`  ： 表示大于、小于、大于等于、小于等于、等于、不等于操作。
`&&`  `||`  逻辑与、逻辑或操作。


变量的特殊操作：

`${var-default}`  ：表示如果变量 `$var` 还没有设置， 则保持 `$var` 没有设置的状态，并返回后面的默认值 `defaul`  。
`${var=default}`  : 表示如果变量 `$var` 还没有设置， 则取后面的默认值 `default` 。
`${var+otherwise}` : 表示如果变量 `$var` 已经设置， 则返回 `otherwise` 的值， 否则返回空（null）。
`${var?err_msg}`  : 表示如果变量 `$var` 已经设置， 则返回该变量的值， 否则将后面的 `err_msg` 输出到标准错误输出上。




`BASH` 中对返回值的处理 ：

无论是在 `Shell` 中对脚本返回值的处理， 还是在脚本中对函数返回值的处理， 都是通过 `$?` 系统变量来获得。 
`Bash` 要求返回值必须为一个整数， 不能用 return 语句返回字符串常量。 


用 Bash 设计简单的用户界面 ：

Bash 中提供了一个小的语句格式， 可以让程序快速的设计一个字符界面的用户交互选择的菜单， 
该功能就是由 select 语句来实现的， select 语句的语法为： 

```bash
select var in
    
    do
    statments use $var
    done
```


```bash
#!/bin/bash

OPTIONS="Hello Quit"
select opt in $OPTIONS 
do
    if [ "$opt" = "Quit" ]
    then
        echo done
        exit
    elif [ "$opt" = "Hello" ]
    then
        echo Hello World
    else
        clear
        echo bad option
    fi
done

exit 0
```



```
$ chmod +x ./t_user_interface.sh 
$ ./t_user_interface.sh 
1) Hello
2) Quit
#? 
```


在 bash 中读取用户输入 ：

`Bash` 中通过 `read` 函数来实现读取用户输入的功能， 如：

```bash
#!/bin/bash

echo Please enter your name
read NAME
echo "Hi! $NAME !"

exit 0

# 读取用户的输入， 并回显在屏幕上。
```


一些特殊的惯用法 ： 


`()`  一对括号一般用于求取括号中表达式的值或命令的执行结果， 
如： (a=hello;echo$a), 其作用相当于 `...` 。

`:` 有两个含义， 一是表示空语句， 有点类似于C语言中的单个 ";" 。 
表示该行是一个空命令， 如果被用在 `while/until` 的头结构中， 则表示值0， 会使循环一直进行下去， 如下：

```bash
while:
do 
    operation-1
    operation-2
    ...
    operation-n
done
```

还可以用于求取后面变量的值， 比如：

```bash
#!/bin/bash

:${HOSTNAME?}{USER?}{MAIL?}
echo $HOSTNAME
echo $USER
echo $MAIL

exit 0
```

在 Bash 中 `export ` 命令用于将系统变量输出到外层的 Shell 中了。



Bash 程序的调试： 
用 `bash -x bash-script` 命令 ， 可以查看一个出错的 Bash 脚本到底错在什么地方， 可以帮助程序员找出脚本中的错误。
另外用 trap 语句可以在 bash 脚本出错退出时 打印出一些变量的值， 以供程序员检查。 
trap 语句必须作为继 "#!/bin/bash" 后的第一句非注释代码， 
一般 trap 命令被写作： `trap 'message $checkvar1 $checkvar2' EXIT` 。



文件分界符： (`EOF`)

>`EOF`： 文件分界符紧跟在`<<`符号后，
>意思是：分界符后的内容将被当做标准输入传给 `<<` 前面的命令， 直到再次在独立的一行遇到这个文件分界符。
>
>`EOF`:  下面必须有空出一行。
>
>`cat`命令： 用来实现一些多行的屏幕输入或者创建一些临时文件  

```bash
# 多行输入 
$ cat<<EOF
> EOF：文件分界符紧跟在<<符号后，意思是分界符后的内容将被当做标准输入传给<<前面的命令，直到再次在独立的一行遇到这个文件分界符。
> cat命令：用来实现一些多行的屏幕输入或者创建一些临时文件
> EOF
EOF：文件分界符紧跟在<<符号后，意思是分界符后的内容将被当做标准输入传给<<前面的命令，直到再次在独立的一行遇到这个文件分界符。
cat命令：用来实现一些多行的屏幕输入或者创建一些临时文件 
```


把输出追加到文件： 

```bash
# 写法一：(没有out.txt文件，会创建)
$ cat<<EOF>out.txt
> www.mengyueping.com
> Hello world
> EOF

```

```bash
$ cat out.txt
www.mengyueping.com
Hello world
```

```bash
# 写法二：
$ cat>out.txt<<EOF
> mengyueping.com
> Hello Web
> EOF

```

```bash
$ cat out.txt
mengyueping.com
Hello Web
```


`cat>filename` 创建文件， 并把标准输入输出到 filename 文件中， 以 `ctr+d` 作为输入结束。

```bash
$ cat>meng
www.mengyueping.com
personal web

$ cat meng
www.mengyueping.com
personal web
```



Shell 是核心程序 （kernel） 之外的指令解析器， 是一个程序， 同时是一种命令语言和程序设计语言。 

查看所有的 shell :

```bash
$ cat /etc/shells

# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
```

默认的 `shell` ：

```bash
$ echo $SHELL
/bin/bash
```

修改权限后运行： 

```bash
$ chmod +x ./t.sh  # 使脚本具有执行权限
./t.sh       # 当前目录下，执行脚本
```

查看文件的 `MD5` 值 ：

```bash
md5sum <file>
```

执行脚本并显示所有变量的值 ： 

```bash
sh -x a.sh
```

不执行脚本， 只是检查语法模式， 将返回所有的语法错误 ： 

```bash
sh -n a.sh
```


```bash
# 创建目录 docName 目录的名字
$ mkdir docName
# 进入到 docName 目录中
$ cd docName 
# 创建文件 
$ touch test.txt
```

脚本解释器 ： 

`sh`  : `Bourne shell` ， `POSIX` （ `Portable Operating System Interface` ） 标准的 shell 解释器，
它的二进制文件路径通常是 `/bin/sh` 。 

`bash` : `Bourne shell` 的替代品， 属 `GNU Project` ， 二进制文件路径通常是 `/bin/bash` 。

在 `CentOS` 里， `/bin/sh` 是一个指向 `/bin/bash` 的符号链接 ： 

```bash
[root@centosraw ~]# ls -l /bin/*sh
-rwxr-xr-x. 1 root root 903272 Feb 22 05:09 /bin/bash
-rwxr-xr-x. 1 root root 106216 Oct 17  2012 /bin/dash
lrwxrwxrwx. 1 root root      4 Mar 22 10:22 /bin/sh -> bash
```

在 `Mac OS` 上， `/bin/sh` 和 `/bin/bash` 是两个不同的文件， 尽管它们的大小只相差 100 字节左右： 

```bash
$ ls -l /bin/*sh
-r-xr-xr-x  1 root  wheel   628496  7  9  2016 /bin/bash
-rwxr-xr-x  1 root  wheel   378624  7  9  2016 /bin/csh
-r-xr-xr-x  1 root  wheel  1394432  7  9  2016 /bin/ksh
-r-xr-xr-x  1 root  wheel   632672  7  9  2016 /bin/sh
-rwxr-xr-x  1 root  wheel   378624  7  9  2016 /bin/tcsh
-rwxr-xr-x  1 root  wheel   573600  7  9  2016 /bin/zsh
```


>`shell` 使用场景 ： 
>
> 如果你觉得自己熟悉的语言 （如Java、C）写 shell 脚本实在太啰嗦， 
> 只是想做一些备份文件、安装文件、下载数据之类的事情，学着使用 sh , bash 会是一个好注意。
> 脚本提供给用户使用， 使用 sh 或者 bash ， 脚本将具有最好的环境兼容性。 
>
>
> `shell` 只定义了一个非常简单的编程语言， 
> 所以， 如果你的脚本程序复杂度较高， 或者要操作的数据结构比较复杂，
> 那么还是应该使用 `Python` 、 `Perl` 这样的脚本语言， 或者是你本来就已经很擅长的高级语言。 
> 因为sh 和bash这方面很弱，比如：
> 1、它的函数只能返回字符串， 无法返回数组 。   
> 2、它不支持面向对象， 你无法实现一些优雅的设计模式   
> 3、它是解释型， 一边解释一边执行， 连 PHP 那种预编译都不是，
>  如果你的脚本包含错误 （例如调用了不存在的函数）， 只要没执行到这一行，就不会报错。
>  
>



命令别名 （`alias`） 
`alias` 命令实现： 
显示当前shell进程所有可用的命令别名：

```bash
# 命令别名. 执行 ls 命令 相当于执行命令 ls -G
bogon:~ apple$ alias
alias ls='ls -G'
alias mysql='/usr/local/mysql/bin/mysql'
alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
```

`alias NAME='VALUE'` 
定义别名 NAME ， 其相当于执行命令 VALUE  

> 注意： 在命令行中定义的别名， 仅对当前 shell 进程有效； 
> 如果想永久有效， 要定义在配置文件中。
> 仅对当前用户： `~/.bashrc` ， 对所有用户有效： `/etc/bashrc`   .
> 编辑配置给出的新配置不会立即生效。

bash 进程重新读取配置文件 ： 

```bash
source /path/to/config_file
. /path/to/config_file
```


撤销别名 `unalias` : 

```bash
unalias [-a] name [name ...]
```

> 如果别名同原命名的名称， 则如果要执行原命令， 可使用 "`\COMMAND`" 。


`glob` ： 
bash 中用于实现文件名“通配” 。


`通配符` ： 

`*`    任意长度的任意字符 。  
`?`    任意单个字符 。
`[]`   匹配指定范围内的任意单个字符 。  

> `[0-9]` 
> `[a-z]` : 不区分字符大小写

`[^]`   匹配指定范围外的任意单个字符。    

> `[^0-9]`


专用字符集合 ： 

`[:digit:]`   任意数字， 相当于0-9
`[:lower:]`   任意小写字母  
`[:upper:]`   任意大写字母
`[:alpha:]`   任意大小写字母
`[:alnum:]`   任意数字或字母
`[:space:]`   空格符号
`[:punct:]`   标点符号 



Bash 快捷键：  

`Ctrl + l`  ： 清屏， 相当于 `clear` 命令 .

`Ctrl + a`  ： 跳转至命令开始处  .

`Ctrl + e`  ： 跳转至命令结尾处  .

`Ctrl + c`  ： 取消命令的执行 .

`Ctrl + u`  ： 删除命令行行首至光标处的所有内容 .

`Ctrl + k`  ： 删除光标所在处至命令行行尾的所有内容 .



Bash 的 I/O 重定向及管道 ： 

> 打开的文件都有一个  `fd :file descriptor (文件描述符)` ， 
> 及用来描述一个文件的标识符号， 其中存放着一些特性信息。 

重定向分类： 
> 标准输入 ：    keyborad  , 0
> 标准输出 ：    monitor   , 1   
> 标准错误输出 ： monitor   , 2   


输出重定向 ： 

格式： `COMMAND > NEW_POS, COMMAND >> NEW_POS`  


相关标示： 

`>`  :  覆盖重定向， 目标文件中的原有内容会被清除；

`>>` :  追加重定向， 新内容会追加至目标文件尾部； 

`set -C` :  禁止将内容覆盖输出至已有文件中； 强制覆盖 : >|  

`set +C` :  打开 。

`2>`  : 覆盖重定向错误输出数据流；

`2>>` : 追加重定向错误输出数据流； 

标准输出和错误输出各自定向至不同位置 ： 
`COMMAND > /path/to/file.out 2> /path/to/error.out`  


合并标准输出和错误输出为同一个数据流进行重定向 ： 

`&>`  : 覆盖重定向 。

`&>>` : 追加重定向 。

`COMMAND > /path/to/file.out 2> &1`

`COMMAND >> /path/to/file.out 2>> &1`   

输入重定向： 

```bash
cat << EOF
cat > /path/to/somefile << EOF
```


管道、tr命令、tee命令  ： 

管道 ： 
`COMMAND1 | COMMAND2 | COMMAND3 |...`

> 最后一个命令会在当前shell进程的子shell进程中执行。  

`tr`命令： 
转换或删除字符.
`tr [OPTION]... SET1 [SET2]`


`tee`命令：  
`tee [OPTION]... [FILE]...`

```
将登录至当前系统上用户信息中的后3行的信息， 
转换为大写后保存至 /tmp/who.out 文件中；
# who | tail -n 3 | tr 'a-z' 'A-Z' > /tmp/who.out
```

文本处理工具： 

`wc`命令： 

格式： `wc [OPTION]... [FILE]...` 

参数选项：  

`-l`  : lines  

`-w`  : words

`-c`  : characters
 
`cut`命令：  

格式： `cut [OPTION]... [FILE]...`

参数选项： 

* `-d DELIMITER`  ： 指明分隔符。

* `-f FILEDS`  ： 
    * `#`  第`#`个字段 
    * `#,#[,#]`   离散的多个字段， 例如 1，3，6
    * `#-#`  连续的多个字段， 例如： 1-6
    * 混合使用： 1-3,7


`sort`命令 ： 

格式 :  `sort [OPTION]... [FILE]...`

参数选项： 

`-f` ： 忽略字符大小写  

`-r` ：  逆序

`-t DELIMITER` 字段分隔符  

`-k #`  以指定字段为标准排序 

`-n`  以数值大小进行排序  

`-u`  排序后，去重复



`uniq` 命令： 

格式： `uniq [OPTION]... [FILE]...`

参数选项： 

`-c`  :   显示每行重复出现的次数；  

`-d`  :   仅显示重复过的行； 

`-u`  :   仅显示不曾重复的行；  

连续且完全相同方位重复 。   








# 2、 小练习

