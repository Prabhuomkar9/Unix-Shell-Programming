<<QUESTION
Write a shell program to display the length of the name and also display first three characters and last three characters in the name in two different lines if the name contains at least 6 characters.
QUESTION

#!\bin\bash
echo "Enter the string"
read string
if [ -z "$string" ]
then
	echo "NULL string"
else
	z=`expr "$string" : '.*'`
	echo "String length is $z"
fi
if [ $z -ge 6 ]
then
	echo "First 3 characters"
	z=`expr "$string" : '\(...\).*'`
	echo "$z"
	echo "Last 3 characters"
	z=`expr "$string" : '.*\(...\)'`
	echo "$z"
	echo "Enter the character to search"
	read char
	z=`expr "$string" : '[^'$char']*'$char''`
	echo "Position is $z"
else
	echo "Invalid string! Less than 6 characters"
fi

<<OUTPUT
sh prg6a.sh 
Enter the string
Omkar Prabhu
String length is 12
First 3 characters
Omk
Last 3 characters
bhu
Enter the character to search
h
Position is 11
OUTPUT
