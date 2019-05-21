function readonenums
% Loop until the user enters a positve number

n = 3;

for loop = 1:n
    inputnum = input('Enter a positive number: ');
    while inputnum < 0
        inputnum = input('Invalid! Enter a positve number: ');
    end

    fprintf('Thanks, you entered a %.1f \n', inputnum);
end

end