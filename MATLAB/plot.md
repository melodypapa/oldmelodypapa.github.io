# Plot

## Graph 2D

enter the `help graph2d` to display all the two dimensional graph functions.

### The Plot Function

* Draw a pixel (100, 200) on the plot

```MATLAB
% create coordinate variables and plot a red '*'
x = 100;
y = 200;
plot(x, y, 'r*');
```

* Change the axes and label (x: 50 - 160; y: 100 - 300). In the call to the **axis** function, the first two values of the vector are the minimum and maximum for the x-axis, and the last two values are the minimum vand maximum for the y-axis.

```MATLAB
axis([50 160 100 300]);
xlabel('Time');
ylabel('Money');
```

* Put the title on the plot

```MATLAB
title('Time and Money');

## Graph 3D

enter the `help graph3d` to display all the three dimensional graph functions.