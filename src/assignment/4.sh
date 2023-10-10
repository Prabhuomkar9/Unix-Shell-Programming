#!\bin\bash

list=`ls -l | tail -n +2`

count=0
flag=true
echo "Following files have READ, WRITE, EXECUTE permissions for user"
for field in $list
do
    if [ $count -eq 0 ]
    then
        if [ `echo $field | cut -c 1` = "d" ]
        then
            flag=false
        elif [ `echo $field | cut -c 2-4` != "rwx" ]
        then
            flag=false
        fi
        count=`expr $count + 1`
    elif [ $count -eq 8 ]
    then
        if [ $flag = true ]
        then
            echo $field
        fi
        count=0
        flag=true
    else
        count=`expr $count + 1`
    fi
done

<<OUTPUT
ls -l
total 7
drwxr-xr-x 1 runner runner   0 Oct 10 17:59 d1
drwxr-xr-x 1 runner runner   0 Oct 10 17:59 d2
drwxr-xr-x 1 runner runner   0 Oct 10 17:59 d3
-rwxr--r-- 1 runner runner 594 Oct 10 17:58 main.sh
--w------- 1 runner runner   0 Oct 10 17:45 test1
-rw-r--r-- 1 runner runner   0 Oct 10 17:47 test2
-rwxr-xr-x 1 runner runner   0 Oct 10 17:47 test3

sh main.sh
Following files have READ, WRITE, EXECUTE permissions for user
test3
OUTPUT
