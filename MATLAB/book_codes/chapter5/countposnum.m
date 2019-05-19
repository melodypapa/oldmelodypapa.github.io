function countposnum 
%
% Syntax: countposnum 
%
% Prompts the user for positive numbers and echo prints as long as the user enters positive numbers

counter = 0;
inputnum = input('Enter a positive number:');
while(inputnum > 0)
    fprintf('You enter a %d. \n\n', inputnum);
    counter = counter + 1;
    inputnum = input('Enter a positive number:');
end
fprintf('Thank, you enter %d positive numbers.\n', counter);

end