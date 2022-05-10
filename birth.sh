#!/bin/bash
count=1
month[0]=January
month[1]=Februvery
month[2]=March
month[3]=April
month[4]=May
month[5]=June
month[6]=july
month[7]=Augest
month[8]=September
month[9]=October
month[10]=November
month[11]=December
echo "Birth month of fifty individuals between the year of 1992 and 1993 is : "
while [ $count -le 50 ]
do
randomnumber=$(($RANDOM%12))
echo $count"." ${month[$randomnumber]}
month_of_individual[$count]=${month[$randomnumber]}
(( count++ ))
done
for((i=0;i<12;i++))
do
echo '-------------'
echo ${month[$i]}
for((j=1;j<50;j++))
do
#echo ${month_of_individual[$j]}
if [ ${month_of_individual[$j]} == ${month[$i]} ]
then
echo 'user' $j
fi
done
echo '--------------'
done
# for((i=0;i<12;i++))
# do
# for((j=1;j<50;j++))
# do
# if [ ${month[$i]} -eq ${month[$randomnumber]} ]
# then
# echo $i $j
# fi
#for((j=1;j<50;j++))# done
# done
