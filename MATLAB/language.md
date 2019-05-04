# MATLAB language

## Comments

### Single-line comments

A signle-line comment begins with **%**. Everything between **%** to the end of the lineis ignored when the script is executed.

```MATLAB
% This is a line comment
```

### Multi-line comments

A multi-line comments begins with **%{** and end with **%}**. Everything beteween **%{** and **%}**. is ignored when the script is execute.

```MATLAB
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

```
>> number = input('Enter the number:')
Enter the number: 5
number =
    5
```

* How to enter a string in the prompt? 

If the character or string is desired, the second funtion argument shall be **'s'**.

```
>> name = input('Enter the name:', 's')
Enter the number: melodypapa
name =
    'melodypapa'
```

* How to enter a vector?

```
>> vector = input('Enter the vector:', 's')
Enter the vector: [1 2 3]
vector =
    1 2 3
```