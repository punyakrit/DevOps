#!/bin/bash




# divisible by 3, divisible by 5 , not by 15

# creating file in new folder loop

mkdir loop
cd loop


# loop running 
for i in {1..1000}; do
if [ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ] && [ `expr $i % 15` != 0 ]
then
	echo $i

# loop running
	touch $i
	

fi
done
