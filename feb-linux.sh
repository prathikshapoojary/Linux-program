#!/bin/bash
low=$1
upp=$2
echo "upper limit $upp"
echo "lower limit $low"
count=0
temp=0
echo "Fibonacci Series from $low to $upp terms :"
fn=0
sum=0
temp=$((low + 1))
for (( i=$low; i<=$upp; i++ ))
do
        if [ $low -le $upp ]
        then
                echo -n "$low "
                sum=$((low + sum))
                fn=$((low + temp))
                low=$temp
                temp=$fn
                count=$((count + 1))
        fi
done
echo ""
echo "count is $count"
echo "sum is $sum"
