# Practice

## Chapter 3

### Practice 3.1

> Write a script to calculate the circumference of a circle (C = 2 πr). Comment the script.

```MATLAB

% Calculate the circumference of a circle (C = 2 πr)

radium = 10;
C = 2 * pi * radium
```

### Practice 3.2

> Create a script that would prompt the user for a length, and then ‘f’ for feet or ‘m’ for meters, and store both inputs in variables. For example, when executed, it would look like this (assuming the user enters 12.3 and then m):
>
> Enter the length: 12.3
>
> Is that f(eet)or m(eters)?: m

```MATLAB
length = input('Enter the length:')

feet_or_meters = input('Is that f(eet) or m(eters)?:', 's')

```

### Parctice 3.3

> Write a script to prompt the user separately for a character and a number, and print the character in a field width of 3 and the number left justified in a field width of 8 with 3 decimal places. Test this by entering numbers with varying widths.

```MATLAB
character = input('Please enter a character:', 's');
fprintf('The character is %3c\n', character);

number = input('Please enter a number:');
fprintf('The number is %8.3f\n', number);
```

### Parctice 3.4

> “Modify the script plotonepoint to prompt the user for the time and temperature, and set the axes based on these values.”

