#!/bin/bash
echo "Roll a die "
while [ 1 ]
do
randomnumber=$(($RANDOM%7))
if [ $randomnumber -eq 0 ]
then
continue
fi
#result_count[$randomnumber]=$((${result_ount[$randomnumber]}+1))
(( result_count[$randomnumber]++ ))
echo $randomnumber'      :       '${result_count[$randomnumber]}
#echo ${count[$randomnumber]}
if [ ${result_count[$randomnumber]} == 10 ]
then
echo "Limit reached"
break
fi
done
min_index=1
for((i=2;i<=6;i++))
do
if [ ${result_count[$i]} -lt ${result_count[$min_index]} ]
then
min_index=$i
fi
done
echo 'least occured' $min_index
