function avenegnum()
% Prompt the user for negative numbers until the suer enters a zero or positive number.
% Then calaculate the average of these numbers
% Syntax: avenegnum()

sum_of_num = 0;
count_of_num = 0;
inputnum = input('Please enter the negative number: ');
while(inputnum < 0)
    sum_of_num = sum_of_num + inputnum;
    count_of_num  = count_of_num + 1;
    inputnum = input('Please enter the negative number: ');
end

if (count_of_num == 0)
    fprintf('No negative numbers to average.\n');
else
    fprintf("The average was %.2f. \n", sum_of_num / count_of_num);
end

end