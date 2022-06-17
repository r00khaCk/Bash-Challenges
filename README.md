# ComparingNumbers
Question:
Given two integers, X and Y, determine whether X > Y, X < Y or X = Y

Write-Up:
- used if..else conditions to determine whether X>Y, X<Y or X=Y.
- 'read' is used to get the input of the user whether
- problem faced:
	=> the 'elif [ "$X" -eq "$Y" ]' is not being called when input entered for X & Y are identical
	=> solution: 
		- change the last "elif []" condition to an 'else' condition (failed)
		- change the condtions of the if and else statements
		
			if [[ $X -eq $Y ]]; 
				....
				.....
				.....
			else
				echo " X is less than Y"

		- use -lt switch which is less than (<)  

	=> not sure why the else statement is executed here but not when it is 
		else
			echo "X is equal to Y"
- things learnt:
	=> [[....]] is not necessary. Better option ((...)) or [....]
	=> $ is not necessary in conditions 
