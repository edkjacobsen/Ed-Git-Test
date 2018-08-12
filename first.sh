#!/bin/bash

#var=-10

#if [ "$var" -gt 0 ]; then  echo "YES"; else echo "NO"
#fi
#---------------------------------------------
#colors="red black white"

#for col in "$colors"
#do
#	echo $col
#done
#----------------------------------------------
let "y=((x=20, 10/2))"

echo $y
#---------------------------------------------
#var=DSLCoNnEctioN

#echo ${var,,}  
#============================================

echo "\"Linux is Awesome\""

#-------------------------------------------
let val=500/2

val2=`echo $val`

echo "$val2"
#-------------------------------------------

var=20

if [ "$var" -gt 15 ]
then :
else
	echo $var
fi
#---------------------------------------------
var2=10

if [ "$var != 0" ]
then
	echo "NO"
else
	echo "YES"
fi
#----------------------------------------------

let var3=100*2
let var4=100**3

echo "$var3 $var4"
#---------------------------------------------
var5=10
echo $(( var6 = var5<20?1:0))

if [ "$var5" -lt 20 ]
then
	var5=1
else
	var5=0
fi
echo "$var5"
#---------------------------------------------

Colors=(red white brown purple)

echo \"{test1,test2,test3}\"
#-----------------------------------------

#cat {test1,test2}> test3

#-----------------------------------

echo {0..9}
#----------------------
var1=1
var2=2
{
var1=11
var2=12
} 

echo "$var1 $var2 "
#-----------------------------
var=1
if [ "$var" -gt 0 ] || [ "$var" -eq 10 ]
then
	echo "One or both conditions are true"
else
	echo "Both conditions are false"
fi
#-------------------------------------
let var=5%4
echo $var
#----------------------------------

someWord=tEsT
echo ${someWord^}
echo ${someWord^^}

#----------------------------------

var=10
unset var
echo $var
var1=1
((var2=var1<10?1:0))
echo $var2
#-----------------------------------

var1=4

echo "type in some value"
read var2
echo $var2
#----------------------------------------
for var in 1 2 3
do 
	echo "Value of var is $var"
done
#------------------------------------------
#echo "tralalalala"
#NoOfArgs=2
#E_BadArgs=85
#E_Unreadable=86

#if [ $# -ne "$NoOfArgs" ]
#then
#	echo "Usage: `basename $0` testfile1 testfile2"
#exit $E_BadArgs
#fi

#if [[ ! -r "$1" || ! -r "$2" ]]
#then
#	echo "Files are real"
#	exit "$E_Unreadable"
#fi
#--------------------------------------------------

var=/Users/Ed/Ed/nano.txt

if [[ -e $var ]]
then
	echo "File exists"
else
	echo "file does not exist"
fi
#-------------------------------------------------

(( 2 >1))
echo "Exit status is $?"
(( 2<1))
echo "Exit status is $?"
(( 2 - 1))
echo "Exit status is $?"
(( 2 - 2)) 
echo "Exit status is $?"
#-----------------------------------------------------------
# -e - true (0) if the file exists
# -f - true if file is a regular file not a directory or device
# -s - true if the file has a file size not 0
# -r - true if the user has the permission to read file
# -x - true if the user has the permission to execute file
# -w - true if user can write to file
#  ! - reverses the result of a file test operator

NO_OF_ARGS=2
E_NOARGS=65
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=89
#------------------------------------------------------------------
for n in {0..5}
do 
	echo "BASH_VERSINFO[$n]	= ${BASH_VERSINFO[$n]}"
done
#-----------------------------------------------------------------
	
	
	echo "$$"   #- gives the pid of the session using
	echo "$BASH"
	echo "$BASH_VERSION"
	echo "$BASH_ENV"
	echo "$BASH_INFO"
#------------------------------------------------------------------
ROOT_UID=0

echo -n "YOU ARE: "

if [ "$UID" -eq "$ROOT_UID" ]
then
	echo "root. Your \$UID = $UID"
else
	echo "user. Your \$UID = $UID"
fi

#----------------------------------------------------------------
















