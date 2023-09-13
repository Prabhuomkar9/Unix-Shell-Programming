<<QUESTION
Write a shell script that accepts filename as arguments. For every filename, it should first check whether it exists in the current directory and then convert its name to uppercase, but only if a file with
new name doesnt exist.
QUESTION
#!\bin\bash
for file in "$@"
do
	if [ -f $file ]
	then
		ufile=`echo $file | tr '[a-z]' '[A-Z]'`
		if [ -f $ufile ]
		then
			echo "$ufile already exists"
		else
			mv $file $ufile
		fi
	else
		echo "$file doesn’t exist"
	fi
done

<<OUTPUT
ls
abc  ABC  f7Part2.sh  f7.sh  f8.sh  lmn  xyz
sh f8.sh abc xyz lmn ABC
ABC already exists
ABC already exists
ls
abc  ABC  f7Part2.sh  f7.sh  f8.sh  LMN  XYZ
OUTPUT
