# MATLAB language

## Comments

### Single-line comments

A signle-line comment begins with **%**. Everything between **%** to the end of the lineis ignored when the script is executed.

```MATLAB
% This is a line comment
```

### Multi-line comments

A multi-line comments begins with **%{** and end with **%}**. Everything beteween **%{** and **%}**. is ignored when the script is execute.

```MATLAB
%{
    this is a mutl-line comments example:
    1. first line
    2. second line
}%
```

### Block comment

The first comment at the beginning of the script file is called a **block comment**. The **block comment** will be displayed in the __help__ command.

It is also for the __lookfor__ command searches through.

## Input and Output

### Input function

Input statements read in values from the stdin or standard input device. The **input** function is used in an assignment statement.

* How to enter a number in the prompt?

```MATLAB
>> number = input('Enter the number:')
Enter the number: 5
number =
    5
```

* How to enter a string in the prompt? 

If the character or string is desired, the second funtion argument shall be **'s'**.

```MATLAB
>> name = input('Enter the name:', 's')
Enter the number: melodypapa
name =
    'melodypapa'
```

* How to enter a vector?

```MATLAB
>> vector = input('Enter the vector:')
Enter the vector: [1 2 3]
vector =
    1 2 3
```

### Output functions (disp and fprintf)

#### disp function

The **disp** function is used to display the result of an expression. But **disp** does not allow formatting.

```MATLAB
>> disp('String')
String
>> disp(2 ^ 2)
4
```

#### fprintf function

The **fprintf** function can format the output.

***
>> fprintf("3 + 4 = %d\n", 3 + 4);
3 + 4 = 7

#### Printing Vectors and Matrices

```MATLAB
>> mat = [1 2 3; 4 5 6]
mat =
   1    2    3
   4    5    6
```

* Print each element in each line

```MATLAB
fprintf('%d\n', mat)
```

* Print three elements in each line

```MATLAB
fprintf('%d %d %d\n', mat)
```

* The **disp** function

It may be much easier to use, the output of vector will be formatted automatically.

```MATLAB
disp(mat)
```

## Function

Every function shall be stored in a seperate file. And function files have an extension of .m.

### Function Definitions

```MATLAB
function outputargument = functionname(input arguments)
% Comment description of the function

Statement ...

end
```

* For example

```MATLAB
function area = circle_area(rad)
% circlearea will calcuate the area of a cirle
% Fomrat of call: circle_area(rad)
% Returns the area

area = pi * rad * rad;
end
```

The "help fnname" command will display the short explanations (comments) of the function.

The "doc fnmame" command will display the function explanations with the MATLAB help.

### Command and Function

If all of the arguments to be passed to a function are strings, and the function does not return any values, it can be used as a commend

> type script1

equals to call the function with 'script1' string argument.

> type('script1')

## Exception

MATLAB can throw an exception with the **error** function.

```MATLAB
error('Sorry; %.2f is not a valid radius\n',radius);
```

## Branching Statements

### if statements

```MATALAB
if condition
    action
end
```

The condition shall be the logical value. In MATLAB the concept of false can be represented by the value of 0, and the concept of true can be reprsented by any nonzero value.

```MATLAB
if 5
    disp('Yes, this is true');
end
```

### if-else statements

```MATLAB
if condition
    action1
else
    action2
ends
```

### switch statemnets