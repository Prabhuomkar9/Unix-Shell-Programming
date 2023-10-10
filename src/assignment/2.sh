while true
do
    echo "Choices:"
    echo "1. Copy file"
    echo "2. Remove file"
    echo "3. Move file"
    echo "4. Exit"
    echo "Enter the choice:"
    read choice
    case $choice in
        1)echo "Enter the file to copy"
        read file1
        echo "Enter the new file name:"
        read file2
        cp $file1 $file2
        echo "File $file1 copied to $file2";;
        2)echo "Enter the file to be removed"
        read file1
        rm $file1
        echo "File $file1 removed";;
        3)echo "Enter the file name to move:"
        read file1
        echo "Enter the location to move to:"
        read loc
        mv $file1 $loc
        echo "File $file1 moved to $loc";;
        4)exit 1;;
        *)echo "Try Again";;
    esac
done

<<OUTPUT
Choices:
1. Copy file
2. Remove file
3. Move file
4. Exit
Enter the choice:
1
Enter the file to copy
a
Enter the new file name:
b
File a copied to b
Choices:
1. Copy file
2. Remove file
3. Move file
4. Exit
Enter the choice:
2
Enter the file to be removed
a
File a removed
Choices:
1. Copy file
2. Remove file
3. Move file
4. Exit
Enter the choice:
3
Enter the file name to move:
b
Enter the location to move to:
folder/b
OUTPUT
