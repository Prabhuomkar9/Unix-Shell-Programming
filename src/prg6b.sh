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
	echo "String operations:\n1. Length\n2. Location of character\n3. First 3 characters\n4. Last 3 characters"
	echo "Enter the choice"
	read choice
	case $choice in
		1)z=`expr "$string" : '.*'`
		echo "String length is $z";;
		2)echo "Enter the character to search"
		read char
		z=`expr "$string" : '[^'$char']*'$char''`
		echo "Position is $z";;
		3)echo "First 3 characters"
		z=`expr "$string" : '\(...\).*'`
		echo "$z";;
		4)echo "Last 3 characters"
		z=`expr "$string" : '.*\(...\)'`
		echo "$z";;
		*)echo "Invlaid Choice";;
	esac
fi

<<OUTPUT 1
sh prg6b.sh 
Enter the string
Abhyutthan
String operations:
1. Length
2. Location of character
3. First 3 characters
4. Last 3 characters
Enter the choice
1
String length is 10
OUTPUT 1

<<OUTPUT 2
sh prg6b.sh 
Enter the string
Abhyutthan
String operations:
1. Length
2. Location of character
3. First 3 characters
4. Last 3 characters
Enter the choice
2
Enter the character to search
t
Position is 6
OUTPUT 2

<<OUTPUT 3
sh prg6b.sh 
Enter the string
Abhyutthan
String operations:
1. Length
2. Location of character
3. First 3 characters
4. Last 3 characters
Enter the choice
3
First 3 characters
Abh
OUTPUT 3

<<OUTPUT 4
sh prg6b.sh 
Enter the string
Abhyutthan
String operations:
1. Length
2. Location of character
3. First 3 characters
4. Last 3 characters
Enter the choice
4
Last 3 characters
han
OUTPUT 4

<<OUTPUT 5
sh prg6b.sh 
Enter the string
Abhyutthan
String operations:
1. Length
2. Location of character
3. First 3 characters
4. Last 3 characters
Enter the choice
5
Invlaid Choice
OUTPUT 5
