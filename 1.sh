#!/bin/bash

E_NOPATTERN=71
DICT=/c/Users/Ed/Ed/test2

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

grep ^"$1"$ "$DICT"



