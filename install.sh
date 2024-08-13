#!/bin/bash 
# store the paths 
paths=$(find /sys/class/backlight)
# convert it to an array 
p_arr=($paths)
#
# p_arr=(mok ham aaeai)
size_arr=${#p_arr[@]}
if [[ size_arr -gt 2 ]];then 
echo $size_arr
echo "you have these paths selct which one of them"
for ((i=1; i<$size_arr; i++));do 
  echo ${p_arr[i]}
done
mypath="none"
else 
mypath=${p_arr[1]}
fi 


echo "you have chosen" 
echo $mypath
# the brightness path is 
b_p="${mypath}/brightness"
mb_p="${mypath}/max_brightness"

echo $b_p
echo $mb_p

cat $b_p

cat $mb_p

