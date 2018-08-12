#!/bin/bash

num=1

if [ "$num" -gt 0 ]
then
        if [ "$num" -lt 5 ]
        then
               if [ "$num" -lt 3 ] 
	       then
                    echo "GT 0, LT 5, LT 3"
		fi
	fi

elif [ "$num" -eq 0 ]
then
	echo "EQ 0"
else
        echo "I Have no idea"
fi
#-------------------------------------------------------
#!/bin/bash

someFunction() 
{
	echo "Funtion name is $FUNCNAME"	
} 

someFunction

echo "Outside. \$FUNCNAME = $FUNCNAME"
#------------------------------------------------------

for i in 1 2 3 4 5
do
	echo "Outer Loop $i -------------------"

	for j in 1 2 3 
	do 
		echo "Inner LOOP $j  !!!!!!!!!! Outer loop iteration $i"
	done

done
#--------------------------------------------------------------------
#
#
declare -r PI=3.1415926
printf "Second decimal of PI is %1.2f\n" $PI
printf "Fifth decimal of PI is %1.5f\n" $PI
#---------------------------------------------------

E_NOPATTERN=71
DICT=/Users/Ed/Ed/test2

if [ -z "$1" ]
then
	echo 
	echo "Usage:"
	echo "`basename $0` \"pattern,\""
	echo "where \"pattern\" is in the form"
	echo "ooo..oo.o..."
	echo
	echo "the o's are letters you already know,"
	echo "and the periods are missing letters."
	echo "Letters and periods can be in any position."
	echo "For example: w...i....n"
	echo
	exit $E_NOPATTERN
fi




