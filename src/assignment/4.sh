#!\bin\bash

ls -l
echo "___________________"
ls -l | tail -n +2
echo "___________________"
list=`ls -l | tail -n +2`
echo $list
echo "-------------------"

count=0
flag=false
for field in $list
do
    if [ $count -eq 0 ]
    then
        echo `cut -c 1-2 $field`
        echo $field
    elif [ $count -eq 8 ]
    then
        echo $field
    fi
    count=`expr $count + 1`
done
