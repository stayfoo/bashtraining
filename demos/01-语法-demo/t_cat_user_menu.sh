# #!/bin/bash

MYDATE=`date +%d/%m/%Y`  # 11/03/2017
THIS_HOST=`hostname`     # localhost
USER="www.mengyueping.com"  

echo $MYDATE
echo $THIS_HOST
echo $USER

while :
do
    clear
    cat<<EOF
    ------------------------------------------------------------------------
    User:$USER         Host:$THIS_HOST      DATE:$MYDATE
    ------------------------------------------------------------------------
                        1: List files in currentdir
                        2: Use the vi editor
                        3: See who is on thesystem
                        H: Help sreen
                        Q: Exit Menu
    ------------------------------------------------------------------------
EOF

    echo -e -n "\tYour Choice [1,2,3,H,Q]>"
    read CHOICE 
        case $CHOICE in
        1) ls
            ;;
        2) vi
            ;;
        3) who
            ;;
        H|h)
            cat<<EOF
            This is the help screen, nothing here yet to help your!
EOF

            ;;
        Q|q) exit 0
            ;;
        *) echo -e "\t\007unknown user response"
            ;;
        esac    # esac是和case配对的， 分支的语句
        
    echo -e -n "\tHit the return key to continue"
    read DUMMY
    echo $DUMMY
done
