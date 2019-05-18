% This script plots exp(x) and log(x) in the same Figure Window
% for values of x ranging from 0 to 2 *pi

clf
x = 0: 0.5: 3.5;
y1 = exp(x);
y2 = log(x);
plot(x, y1, 'b', x, y2, 'r');
hold on
legend('exp','log');
xlabel('x');
ylabel('exp(x) or log(x)')
title('exp and log on one graph');