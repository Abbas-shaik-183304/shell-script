#!/bin/bash

<<comment
a while loop example
comment

i=0

while [[ $i -le 4 ]]
do
	echo " den "
	echo number : $i
	((i=$i+1))
done

newY="281"
eCheck=$(( $newY % 2 ))

echo $newY
echo $eCheck
while [ $eCheck -eq 0 ]; do
        newY=$((newY-1))
        eCheck=$(( $newY % 2 ))
        echo $newY
done

number=0
while [ $number -le 6 ]
do
echo Number: $number
((number+=1))
done
