# Conditional Part 2 
Question:
Given three integers (X, Y, and Z) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

If all three sides are equal, output EQUILATERAL. <br>
Otherwise, if any two sides are equal, output ISOSCELES.<br>
Otherwise, output SCALENE.

Input Format: <br>
Three integers, each on a new line.

Constraints: <br>
**1 <= X, Y, Z<=1000** <br> 
The sum of any two sides will be greater than the third.

Output Format: <br>
One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).	

## Writeup
1. used `if..else` conditional statement
2. Tested to see if all three inputs are being detected by the `read`
    - test #1: used 
    ```bash
    
    read X,Y,Z
    echo X,Y,Z
    
    ```
    Problem faced: the `read` could only accept the input for X but not the others. `echo` showed error because missing `$` <br>
    
    - test #2: separated each input variable 
    ```bash
    read X
    read Y
    read Z
    ```
    - `echo` manages to display all three inputs <br>
  
3. Started the coding for the conditional statement
    -  test #1:
        -  Combined all the input variables in the `if..else` statement
      ```bash
      if [ $X == $Y == $Z ];
      ```
      Script could not execute the conditional statement
    - test #2: separated the conditions into 2 parts using  `&&`   
    ```bash
   if [ $X == $Y ] && [ $Y == $Z ]; # for the equilateral
   then 
        #code   
	elif [ $X == $Y ] || [ $Y == $Z ] || [ $X == $Z ]; # for the isosceles
   then 
        #code
	 ```
