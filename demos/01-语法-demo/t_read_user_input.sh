#!/bin/bash

echo Please enter your name
read NAME
echo "Hi! $NAME !"




APP_NAME="${0##*[\\/]}"   # 输出： t_read_user_input.sh
# APP_NAME="$0"           # 输出： ./t_read_user_input.sh
echo $APP_NAME



exit 0 