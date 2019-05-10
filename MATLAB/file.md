# Introduction to File Input/Output (Load and Save)

## Save (Write Data to a file)

```MATLAB
mymat = rand(2, 3)
save testfile.data mymat -ascii
```

## Appending Data to a existed data file

```MATLAB
mat2 = rand(3, 3);
save testfile.data mat2 -ascii -append
```

**Note**: Recommend to save the data with the same number of columns.

## Reading data from a file

```MATLAB
clear
load testfile.data
testfile
```

**Note**: _**Load**_ function only works if there are the same column number in each line. Otherwise it will report erros.

```MATLAB
Number of columns on line 3 of ASCII file testfile.data must be the same as previous lines.
```