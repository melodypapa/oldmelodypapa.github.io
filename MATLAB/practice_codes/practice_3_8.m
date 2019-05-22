load salesfigs.dat
salesfigs;
y1 = salesfigs(1,:);
y2 = salesfigs(2,:);

clf
plot(y1, 'ko')
hold on
plot(y2, 'b.')
legend('Division A','Division B')
xlabel('Quarter')
ylabel('Sales (billions)')
title('ABC corporation sales:2013')