#!/bin/bash

# shell 文件包含
# 包含外部脚本。 方便封装一些公用代码作为一个独立的文件。
# 语法格式：
# . filename     #注意： . 和文件名中间有一空格
# 或者
# source filename


# 使用 . 来引用 t.sh 文件
. ./t.sh

# 使用 source 包含文件代码
source ./t_string.sh

# 注意： 被包含的文件， 不需要可执行权限。

