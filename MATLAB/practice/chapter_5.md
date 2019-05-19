# Chapter 5

## Practice 5.1

> Write a for loop that will print a column of five ⁎’s.
>> answer:

```MATLAB
for loop = 1:5
   fprintf('*\n')
end
```

## Practice 5.2

> Write a script prodnnums that is similar to the sumnnums script, but will calculate and print the product of the numbers entered by the user.
>> answer

```MATLAB
function result = prodnnums(n)
% prodnnums results the product of  the n numbers entered by the user
% Format of call: prodnnums(n)
    result = 1;
    for loop = 1:n
        number = input('Please enter a number:');
        result = result * number;
    end % for

end % function
```

## Practice 5.3

> For each of the following (they are separate), determine what would be printed. Then, check your answers by trying them in MATLAB.

```MATLAB
mat = [7 11 3; 3:5];
[r, c] = size(mat);
for i = 1:r
   fprintf('The sum is %d\n', sum(mat(i,:)))
end
```

> The sum is 21
>
> The sum is 12

- - - - - - - - - - - - - - - - - - - - - - - - - - -

```MATLAB
for i = 1:2
   fprintf('%d: ', i)
   for j = 1:4
     fprintf('%d ', j)
   end
   fprintf('\n')
end
```

> 1: 1 2 3 4
>
> 2: 1 2 3 4

## Practice 5.4

> Write a function mymatmin that finds the minimum value in each column of a matrix argument and returns a vector of the column minimums. Use the programming method. An example of calling the function follows:

```MATLAB
>> mat = randi(20,3,4)
mat =
    15  19  17   5
     6  14  13  13
     9   5   3  13

>> mymatmin(mat)
ans =
    6  5  3  5
```

## Practice 5.5

> Write a script avenegnum that will repeat the process of prompting the user for negative numbers, until the user enters a zero or positive number, as just shown. Instead of echo-printing them, however, the script will print the average (of just the negative numbers). If no negative numbers are entered, the script will print an error message instead of the average. Use the programming method. Examples of executing this script follow:

```MATLAB
 >> avenegnum
 Enter a negative number: 5
 No negative numbers to average.
 >> avenegnum
 Enter a positive number: -8
 Enter a positive number: -3
 Enter a positive number: -4
 Enter a positive number: 6
 The average was -5.00
```

## Practice 5.6

> Modify the script readoneposint to read n positive integers, instead of just one.

## Practice 5.7

> Write a function that imitates the cumprod function. Use the method of preallocating the output vector.

## Practice 5.8

> Modify the function matcolsum. Create a function matrowsum to calculate and return a vector of all of the row sums instead of column sums. For example, calling it and passing the mat variable above would result in the following:

```MATLAB
 >> matrowsum(mat)
 ans =
    12   14
```

## Practice 5.9

> Call the function testvecgtnii, passing a vector and a value for n. Use MATLAB code to count how many values in the vector were greater than n.

## Practice 5.10

> Vectorize the following (rewrite the code efficiently):

```MATLAB
i = 0
for inc = 0: 0.5: 3
    i = i + 1;
    myvec(i) = sqrt(inc);
end
- - - - - - - - - - - - - - - - - - - - - - - - - - 
[r c] = size(mat);
newmat = zeros(r,c);
for i = 1:r
    for j = 1:c
        newmat(i,j) = sign(mat(i,j));
    end
end
```