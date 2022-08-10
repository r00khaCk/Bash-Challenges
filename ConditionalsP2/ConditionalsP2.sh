#!/bin/bash 

echo "Enter 3 integers"

read X
read Y
read Z

if [ $X == $Y ] && [ $Y == $Z ];
then 
	echo "Equilateral"

elif [ $X == $Y ] || [ $Y == $Z ] || [ $X == $Z ];
then
	echo "Isosceles"

else
	echo "Scalene"
fi
