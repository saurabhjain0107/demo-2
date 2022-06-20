#! /bin/bash -x

declare -A singlateDictionary
IS_TAIL=1
IS_HEAD=0
flipCoinValue=0
needToRun=true
tailCount=0
headCount=0

while [ $needToRun == true ]
do
	flipCoinValue=$((((RANDOM))%2))

	if [ $flipCoinValue -eq $IS_TAIL ]
	then
		tailCount=$(($tailCount+1))
		singlateDictionary["Tail"]=$tailCount
	else
		headcount=$(($headCount+1))
		singlateDictionary["Head"]=$headCount
	fi
done
