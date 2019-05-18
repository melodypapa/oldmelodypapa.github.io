# Chapter 4 Practices

## Practice 4.1

> Write an if statement that would print “Hey, you get overtime!” if the value of a variable hours is greater than 40. Test the if statement for values of hours less than, equal to, and greater than 40. Will it be easier to do this in the Command Window or in a script?

```MATLAB
hour = input('Please enter the hour:');

if (hour > 40)
    disp('Hey, you get overtime!')
end
```

## Practice 4.2

> Write a script printsindegorrad that will:

* prompt the user for an angle
* prompt the user for (r)adians or (d)egrees, with radians as the default
* if the user enters ‘d’, the sind function will be used to get the sine of the angle in degrees; otherwise, the sin function will be used. Which sine function to use will be based solely on whether the user entered a ‘d’ or not (‘d’ means degrees, so sind is used; otherwise, for any other character the default of radians is assumed, so sin is used)
* print the result.

Here are examples of running the script:

```MATLAB
 >> printsindegorrad
 Enter the angle: 45
 (r)adians (the default) or (d)egrees: d
 The sin is 0.71
 >> printsindegorrad
 Enter the angle: pi
 (r)adians (the default) or (d)egrees: r
 The sin is 0.00
```

```MATLAB
function printsindegorrad
    angle = input('Enter the angle:');
    r_or_d = input('(r)adians (the default) or (d)egree:','s');

    if (r_or_d == 'd')
        fprintf('The sin is %f \n', sind(angle))
    else
        fprintf('The sin is %f', sin(angle))
    end
end
```

## Practice 4.3

> Modify the function findargtype to return either 'scalar.', 'row vector.', 'column vector.' or 'matrix.' depending on the input argument

```MATLAB
function outtype = findargtype(inputarg)
    [r c] = size(inputarg)
    if (r == 1 && c == 1)
        outtype = 'scalar';
    elseif (r == 1)
        outtype = 'row vector';
    elseif (c == 1)
        outtype = 'column vector';
    else
        outtype = 'matrix';
    end
end
```

## Practice 4.4

> Modify the original function findargtype to use three sepeare **if** statements instead of a nested **if-else** statement

```MATLAB
function outtype = findargtype(inputarg)
    [r c] = size(inputarg)
    if (r == 1 && c == 1)
        outtype = 'scalar';
    end
    if (r == 1 || c == 1)
        outtype = 'vector';
    end
    if (r > 1 && c > 1)
        outtype = 'matrix';
    end
end
```

## Practice 4.5

> Prompt the user for a string, and then print either the string that the user entered or an error message if the user did not enter anything.

```MATLAB
str = input('Please enter a string:', 's');
if (~isempty(str))
    fprintf('You have entered the string <%s> \n', str)
else
    fprintf('You have not entered the string.\n')
end
```