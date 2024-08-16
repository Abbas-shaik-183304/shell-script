#!/bin/bash

<< know
know that here i am using for loop here to created number of directories at a time
i am giving arguments here
1 is a range to start
2 is the range to stop
know

for (( i==0 ; i<=5 ; i++ ));
do 
	mkdir "demo$i"
done

for (( y== $1 ; y<= $2 ; y++ ));
do
	touch day$y
done
