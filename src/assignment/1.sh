#!\bin\bash

echo "Enter a number:"
read num

if [ `expr $num % 2` -eq 0 ]
then
	echo "Number is even"
else
	echo "Number is odd"
fi


<<OUTPUT
Enter a number:
2
Number is even

Enter a number:
3
Number is odd
OUTPUT
