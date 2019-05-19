% Reads data from a file, but only plots the numbers
% up to a flag of -99. Uses find and the colon operator

load experd.dat

position = find(experd == -99);
newvec = experd(1: position - 1)

plot(newvec, 'k')
xlabel('Reading #')
ylabel('Weight(pounds)')
title('First Data Set')