#!/bin/bash

#file=wood.txt
#echo "this line is sent to $file" 1>$file
#-------------------------

echo 12345 > fd.txt  #write 12345 into file fd.txt
exec 3<>fd.txt       #open fd.txt file and assign a file descriptor 3
read -n 2 <&3        #read only 2 characters from the file
echo -n . >&3        #write a decimal point at file descriptor 3
exec 3>&-            #this closes file 
cat fd.txt	     #cat whats left in the file which is 12.45
#-------------------------------------------------------

#function_name() { commands; command1; command2; }
function1 ()
{
		echo "call \"f2\" from \"f1\"."
                function2
}

function2 ()
{
	echo "this is \"f2\""
}

function1 
#---------------------------------------------------

_()
{
	echo "Hey there I am $FUNCNAME"
	echo "First arg is $1, second arg is $2"
}
var1=10
var2=20

_  $var1 $var2 

#--------------------------------------------------

declare -a arr

arr=( 10 20 30 40 50 50 )

echo -e "${arr[0]} \n${arr[1]} \n${arr[2]} \n${arr[3]} \n${arr[4]}"
#------------------------------------------------------

arr1=([0]=first [1]="second" [7]=45)

echo -e "${arr1[0]} \n${arr1[1]} \n${arr1[7]}"
#-------------------------------------------------------------
a=something123

echo ${a[*]} # prints out whole array someting123
echo ${a[0]} # prints out first element which is something123
echo ${a[1]} # prints out second element which there is none so blank
echo ${#a[@]} #prints out the number of elements which is 1 for something123

#----------------------------------------------------------------------
arr2=( zero one two)

echo "------------------------------- "
echo ${arr2[0]}  # prints out first element in array - zero
echo ${#arr2[0]} # prints out length of the first element - 4
echo ${#arr2[*]} # prints out size of the array like & sign does - 3





