function whileposnum
%whileposnum - Propmpts the user and echo prints the numbers enetered
% until the user eneters a negative number
%
% Syntax: output = whileposnum
%
% Long description

inputnum = input('Enter a positive number:');
while inputnum > 0
    fprintf('You entered a %d.\n\n', inputnum)
    inputnum = input('Enter a positive number:');
end

fprintf('OK! \n');