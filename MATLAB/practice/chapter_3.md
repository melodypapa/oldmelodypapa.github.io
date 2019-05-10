# Chapter 3

## Practice 3.1

> Write a script to calculate the circumference of a circle (C = 2 πr). Comment the script.

```MATLAB

% Calculate the circumference of a circle (C = 2 πr)

radium = 10;
C = 2 * pi * radium
```

## Practice 3.2

> Create a script that would prompt the user for a length, and then ‘f’ for feet or ‘m’ for meters, and store both inputs in variables. For example, when executed, it would look like this (assuming the user enters 12.3 and then m):
>
> Enter the length: 12.3
>
> Is that f(eet)or m(eters)?: m

```MATLAB
length = input('Enter the length:')

feet_or_meters = input('Is that f(eet) or m(eters)?:', 's')

```

## Parctice 3.3

> Write a script to prompt the user separately for a character and a number, and print the character in a field width of 3 and the number left justified in a field width of 8 with 3 decimal places. Test this by entering numbers with varying widths.

```MATLAB
character = input('Please enter a character:', 's');
fprintf('The character is %3c\n', character);

number = input('Please enter a number:');
fprintf('The number is %8.3f\n', number);
```

## Parctice 3.4

> “Modify the script plotonepoint.m to prompt the user for the time and temperature, and set the axes based on these values.”

```MATLAB
% This is a really simple plot of just one point!

% Create coordinate variables and plot a red '*'
x = input('Please enter the x coordinate:');
y = input('Please enter the y coordinate:');
plot(x,y,'r*');

% Change the axes and label them
axis([x-5  x+5  y-5 y+5]);
xlabel('Time');
ylabel('Temperature');

% Put a title on the plot
title('Time and Temp');
```

## Practice 3.5

> Modify the plot2figs script using the axis function so that all points are easily seen.

```MATLAB
% This creates 2 different plots, in 2 different
% Figure window, to demostrate some plot feature

clf
x = 1:5; % Not necessary
y1 = [2 11 6 9 3];
y2 = [4 5 8 6 2];
% Put a bar chart in Figure 1
figure(1)
bar(x, y1)
% Put plots using differnt y values on one plot
figure(2)
plot(x, y1, 'k')
hold on
plot(x, y2, 'ko')
grid on
legend('y1', 'y2')
axis([0 6 0 12])
```

## Practice 3.6

> Write a script that plots exp(x) and log(x) for values of x ranging from 0 to 3.5.

```MATLAB
% This script plots exp(x) and log(x) in the same Figure Window
% for values of x ranging from 0 to 2 *pi

clf
x = 0: 0.5: 3.5;
y1 = exp(x);
y2 = log(x);
plot(x, y1, 'b', x, y2, 'r');
legend('exp','log');
xlabel('x');
ylabel('exp(x) or log(x)')
title('exp and log on one graph');
```

## Practice 3.7

> Prompt the user for the number of rows and columns of a matrix, create a matrix with that many rows and columns of random integers, and write it to a file.

```MATLAB
row = input('Please enter the row:');
column = input('Please enter the column:');

numbers = randi([1 100], row, column);
save datafile.dat numbers -ascii;
```

## Practice 3.8

> “The sales (in billions) for two separate divisions of the ABC Corporation for each of the four quarters of 2013 are stored in a file called “salesfigs.dat”:
>
> 1.2 1.4 1.8 1.3
> 
> 2.2 2.5 1.7 2.9
>
> First, create this file (just type the numbers in the Editor, and Save As “salesfigs.dat”).
>
> Then, write a script that will load the data from the file into a matrix.
>
> separate this matrix into 2 vectors.
>
> create the plot seen in Figure 3.7 (which uses black circles and stars as the plot symbols).”

```MATLAB
load salesfigs.dat
salesfigs
y1 = salesfigs(1,:)
y2 = salesfigs(2,:)

clf
plot(y1, 'ko')
hold on
plot(y2, 'b.')
legend('Division A','Division B')
xlabel('Quarter')
ylabel('Sales (billions)')
title('ABC corporation sales:2013')
```