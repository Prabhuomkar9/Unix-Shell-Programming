#!\bin\bash

echo "Enter the string"
read input

reverse=`expr $input | rev`

if [ "$input" = "$reverse" ]
then
	echo "String is a pallindrome"
else
	echo "String is not a pallindrome"
fi

<<OUTPUT
Enter a string
moon
String is not a pallindrome

Enter a string
moom
String is a pallindrome
OUTPUT
