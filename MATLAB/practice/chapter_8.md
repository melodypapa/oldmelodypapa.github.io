# Chapter 8

## Practice 8.1

> Write an expression that would display a random element from a cell array (without assuming that the number of elements in the cell array is known). Create two different cell arrays and try the expression on them to make sure that it is correct.
> 
> For more practice, write a function that will receive one cell array as an input argument and will display a random element from it.

```MATLAB
names = {'Sue', 'Cathy', 'Xavier'};
cellmat = {23 'a'; 1:2:9 'hello'};

display_random(names);
display_random(cellmat);

function display_random(cellvalues)
    num = randi([1, length(cellvalues)]);
    disp(cellvalues{num});
end 
```

## Practice 8.2

> A silicon wafer manufacturer stores, for every part in its inventory, a part number, quantity in the factory, and the cost for each.

| part_no | quality | costper |
|---------|:-------:|:-------:|
|123      | 4       | 33.95   |

> Create this structure variable using struct. Print the cost in the form $xx.xx.


```MATLAB
onepart = struct('part_no', 123, 'quality',4, 'costper', 33.95);
fprintf('%.2f', onepart.cost)
```

