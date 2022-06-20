#! /bin/bash -x

declare -A singlateDictionary
IS_TAIL=1
IS_HEAD=0
flipCoinValue=0
needToRun=true
tailCount=0
headCount=0
tailPercentage=0
headPercentage=0

calc() { awk "BEGIN{print $*}"; }

while [ $needToRun == true ]
do
        flipCoinValue=$((((RANDOM))%2))

        if [ $flipCoinValue -eq $IS_TAIL ]
        then
                tailCount=$(($tailCount+1))
                singlateDictionary["Tail"]=$tailCount
        else
                headCount=$(($headCount+1))
                singlateDictionary["Head"]=$headCount
        fi
read -p "Do you want to continue. Press y to yes n to no " checkCondition
checkCondition=${checkCondition,,}
if [ "$checkCondition" != "y" ]
then
        needToRun=false
fi

done

tailChance=`calc $tailCount/$(($tailCount+$headCount))`
tailPercentage=$(echo 100 $tailChance | awk '{ printf "%f", $1 * $2 }')
echo $tailPercentage
headPercentage=$(echo 100 $tailPercentage | awk '{ printf "%f", $1 - $2 }')
echo $headPercentage
