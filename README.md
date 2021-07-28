# bash_script

## 1. Bash Script Structure
- The first line should be shebang(define interpreter like #! /bin/bash, #! /bin/peal)
- The last line should be exit 0  (Terminate script normally)
- Example
```
#! /bin/bash

echo "hello world"

exit 0
```

## 2. How to Execute Shell script
- If the file is not Executable,
```
$ sh ./filename
```

- If the file is Executable,
```
$ ./filename
```

cf. How to change files to be Executable
```
$chmod 744 ./filename 
```

## 3. Basic Grammar
### 1) Variable
#### (a) Environment Variable 
- What is Environment Variable? 
	Variables referenced by the operating system

- Example

| variable | Description | variable | Description |
|:--------|:--------|:--------|:--------|
| HOME | current user's home directory | PATH | the paths to find exe file | 
| LANG | supported languages | PWD | current location |
| TERM | login terminal type | SHELL | the shell using when login |
| USER | current username | DISPLAY | X display name |
| COLUMNS | the number of current terminal's colums | LINES | the number of current terminal's lines |
| PS1 | first prompt variable | PS2 | second prompt variable |
| BASH | the path of bash shell | BASH_VERSION | bash version |
| HISTFILE | the path of history file | HISTSIZE | the size of history file |
| HOSTNAME | hostname | LOGNAME | login name | 
| MAIL | the path to store mails | OSTYPE | os type |

- How to Define Environment Variable?
```
$ export variable_name=variable_value
```

#### (b) Local Variable
- What is Environment Variable? 
	Variables for current terminal

- How to Define Environment Variable?
```
$ variable_name=variable_value
```

cf 1. Linux save variables as string
cf 2. How to  call variable?
```
$ $variable_name
```

cf 3. Linux is able to distinguish between capital letters and small letters
cf 4. = has no space left or right
cf 5. How to print variable?
```
$ echo $variable_name
$ echo "$variable_name"
```
if you want to print $variable_name literally
```
$ echo '$variable_name'
$ echo \$variable_name
```

### 2) Parameter
- What is Parameter? 
	An entity that stores user's input values

- Example
input command
```
$ test.sh value1 value2 value3
```

test.sh
```
#! /bin/bash

val1=$1
val2=$2
val3=$3
echo $0
echo $val1  
echo $val2
echo $val3

exit 0
```

output
```
test2.sh
value1
value2
value3
```

### 3) Function
- How to create function?
```
function_name () {
	...  
	cf. if there are parameters, we can use them like $1 $2
	return 
}
```
- How to call function?
```
function_name value1 value2 ...
```
cf. return : we can use it in function -> it returns to the location where the function called


### 4) Alias
- What is Alias? short name that the shell translates into another name or command
- How to set Alias?
```
$ alias alias_name=’command’

$ alias ll=’ls -la’
```

- How to remove Alias
```
$ unalias alias_name
```

- How to set permanent alias? 
Add alias in ~/.bashrc file
and reboot or input this command (source ~/.bashrc) 

### 5) Operator
#### (a) Arithmetic Operator
| Operator | Description | 
|:--------|:--------|
| + | addtion |
| - | subtraction |
| * | multiplication |
| / | division |
| % | modulo |

- How to write a mathematical expression?
```
expr `mathematical expression`
```
```
#! /bin/bash

num1=1
num2=2
num3=`expr \( $num1 + $num2 \) / \( 5 - 2 \)`
echo $num3

exit 0
```
cf1. there is space on the left and right of +,-,*,/,%, (, )
cf2. \ should be written in front of (, ), * 



#### (b) Comparison Operators
| Operator | Description | 
|:--------|:--------|
| a -eq b| it is ture if a equals to b |
| a -ne b| it is ture if a does not equal to b |
| a -gt b| it is ture if a is greater than b |
| a -ge b| it is ture if a is greater than or equal to b |
| a -lt b| it is ture if a is less than b |
| a -le b| it is ture if a is less than or equal to b |

#### (c) Logical Operators
| Operator | Description | 
|:--------|:--------|
| && | and |
| || | or |
| ! | not |

#### (d) File Operators
| Operator | Description | 
|:--------|:--------|
| -d /path/file_name | it is ture if the file is directory |
| -e /path/file_name | it is ture if the file exits |
| -f /path/file_name | it is ture if the file is nomal file |
| -s /path/file_name | it is ture if the file's size is not 0 |
| -g /path/file_name | it is ture if set-group-id has been set in the file |
| -u /path/file_name | it is ture if set-user-id has been set in the file |
| -r /path/file_name | it is ture if the file is readable |
| -w /path/file_name | it is ture if the file is writealbe |
| -x /path/file_name | it is ture if the file is executable |


### 6) Control Flow
#### (a) Conditional Statement
- if
```
if [ Conditional Statement ]     
then
	command
elif [ Conditional Statement ]            
then
	command
else 
	command
fi
```
- case 
```
case $var_name in
	value1)
		command1-1
		command1-2;;	
	value2)
		command2;;
	value3)
		command3;;
	*)			
		command4;;
esac
```

#### (b) Loop Statement
- for
	- What is select?
		the statement to repeat commands by the number of values

	- Appearance
```
for variable_name in value1 value2 value3 or list
do
	commands
done
```

- while
	- What is select?
		the statement to repeat commands until the conditional statement is true

	- Appearance
```
while [ conditional statement ]	-> 해당 조건문이 ture일때까지 반복
do
	commands
done 
```

- until
	- What is select?
		the statement to repeat commands until the conditional statement is false

	- Appearance
```
until [ conditional statement ]	
do
	commands
done 
```

#### (c) select 
- What is select?
one of statement to make menu

- Appearance
```
select variable_name in menu1 menu2 menu3…
do
	case $variable_name in
		menu1)
			command1
		menu2)
			command2
		menu3)
			command3
		...
done
```

- Example
test.sh
```
#! /bin/bash

echo "select menu"
select menu in printl printall printhello quit
do
        case $menu in
                printl)
                        clear 
                        ls -l ;;
                printall)
                        clear 
                        ls -al ;;
                printhello)
                        clear 
                        echo 'hello' ;;
                quit)
                        clear 
                        break ;;

        esac
done
```

```
$ bash test.sh
select menu
1) printl
2) printall
3) printhello
4) quit
#?                                 -> input 1-4
```


cf 1. break ;;		-> 	get out of loop
cf 2. continue ;;	-> 	Return to the conditional statement of loop
cf 3. exit ;;		-> 	exit the program

## 4. Debug
- debug by command
```
$ bash -x script_file_name
```

- set debug in the scirpt file 
```
#! /bin/bash
set -x

	commands

set +x
```

## 5. etc.
read variable		->	get values from user
$( command )		-> 	use the result of command  
set  $( command ) 	-> 	use the result of command as parameters 


