<<QUESTION
Write a Shell Program that takes the any number of arguments and print them in same order and in reverse order with suitable messages. (For example, if the script m named rargs, then executing rargs A B C should produce A B C and C B A on the standard output).
QUESTION

#!\bin\bash
echo "Program name : $0"

if [ $# -eq 0 ]
then 
	exit
fi

echo "No. of arguments : $#"
echo "The input arguments are"
num=1
for i in "$@"
do
	echo "arg$num is $i"
	num=`expr $num + 1`
done

echo "Arguments in reverse order are"
num=$#
while [ $num -ne 0 ]
do
	eval echo "arg$num is \$$num"
	num=`expr $num - 1`
done

<<OUTPUT
sh prg8.sh a b c d e
Program name : prg8.sh
No. of arguments : 5
The input arguments are
arg1 is a
arg2 is b
arg3 is c
arg4 is d
arg5 is e
Arguments in reverse order are
arg5 is e
arg4 is d
arg3 is c
arg2 is b
arg1 is a
OUTPUT
