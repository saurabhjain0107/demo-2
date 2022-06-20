#! /bin/bash -x

IS_TAIL=1
IS_HEAD=2
flipCoinValue=0

flipCoinValue=$((RANDOM%2))

if [ $flipCoinValue -eq $IS_TAIL ]
then
	echo Tail
else
	echo head
fi

