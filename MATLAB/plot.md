# Plot

## Graph 2D

enter the `help graph2d` to display all the two dimensional graph functions.

### The Plot Function

* Draw a point (100, 200) on the plot

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
```

* Draw more than one point

```MATLAB
x = 1:2:12;
y = randi([1, 20], 1, 6);
plot(x, y);
```

* Draw the point without x axis

```MATLAB
y = randi([1, 20], 1, 6);
plot(y);
```

### Customizing Plot

* Line color

| Code        | Color         |
| ------------|:-------------:|
| b           |  blue         |
| g           |  green        |
| r           |  red          |
| c           |  cyan         |
| m           |  magenta      |
| y           |  yellow       |
| k           |  black        |
| w           |  white        |

* plot symbols (markers)

| Code        | Marker           |
| ------------|:----------------:|
| .           |  point           |
| o           |  circle          |
| x           |  x-mark          |
| +           |  plus            |
| *           |  star            |
| s           |  square          |
| d           |  diamond         |
| v           |  down triangle   |
| ^           |  up triangle     |
| <           |  left triangle   |
| >           |  right triangle  |
| p           |  pentagram       |
| h           |  hexagram        |

* line types

| Code        | Line Type        |
| ------------|:----------------:|
| -           |  solid           |
| :           |  dotted          |
| -.          |  dash dot        |
| --          |  no line         |

### Simple Related Plot Functions

* **clf** : clears the Figure Window by removing everything from it.
* **figure** : creates a new, empty Figure Window when called without any arguments.

## Graph 3D

enter the `help graph3d` to display all the three dimensional graph functions.