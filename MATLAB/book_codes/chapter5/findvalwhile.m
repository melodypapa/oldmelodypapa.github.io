% Reads data from a file, but only plots the numbers up to a flag of -99.
% Uses a while loop.

load experd.dat

loop = 1; 
newvec = zeros(length(experd));

while(experd(loop) ~= -99)
    newvec(loop) = experd(loop);
    loop = loop + 1;
end

plot(newvec, 'ko')
xlabel('Reading #')
ylabel('Weight(pounds)')
title('First Data Set')