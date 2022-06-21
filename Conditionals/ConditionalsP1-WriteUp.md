# Conditionals Part1
Question: <br>
Read in one character from STDIN.<br>
If the character is 'Y' or 'y' display "YES".<br>
If the character is 'N' or 'n' display "NO".<br>
No other character will be provided as input.<br>

Write-up:
- Used `if..elif..else` conditional statement
- Problem faced:
  - The `if..else` is not passing the correct input through the condition. Keeps displaying the `echo "YES"` output regardless of the input
  - the `OR`/`||` could be implemented in a wrong manner.
  - current use of the `if..elif..else` statement:
```bash
if ((input == "Y" || "y")); then
  echo "YES"
  # elif
  #else
fi
```
- Possbile fix #1:
  - Change the `if ((input == "Y" || "y"))` to `if (input == "Y") || (input == "y")`   
  - Outcome: **FAIL**
- Possible fix #2:
  - Replace:
    - `if ((..))` with  `[[..]]`
    - `input` with `$input`
  - Outcome: **PASS** 
```bash
if [[ $input == "Y" || $input == "y" ]]; then
  echo "YES"
elif [[ $input == "N" || $input == "n" ]]; then 
	echo "NO"
else
	echo "input error"
```

- things learnt:
  - using `OR`/`||` in an `if...else` statement
  - `$` is needed when input is not numeric
  - **ALTERNATIVE CODE**: 
  ```bash
  read input; echo -e "YES\nNO\n" | grep -i $input
  ```  
 - `echo -e`: enable interpretation of backslash escapes
    - `YES\nNO\n`
    - `\n`: new line
 - `grep -i`: ignore-case
    - Ignore case distinctions in patterns and input data, so that characters that differ only in case match each other
    - will filter and choose the words that contains the input character
