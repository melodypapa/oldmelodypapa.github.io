function readonenum
% Loop until the user enters a positve number

inputnum = input('Enter a positive number: ');
while inputnum < 0
    inputnum = input('Invalid! Enter a positve number: ');
end

fprintf('Thanks, you entered a %.1f \n', inputnum);

end