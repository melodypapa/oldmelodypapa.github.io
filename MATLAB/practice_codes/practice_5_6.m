function practice_5_6(n)
%readnposint - read n positve integers.
%
% Syntax: result = readnposint(n)

for loop = 1:n 
    inputnum = input('Please enter a positive integer: ');
    num2 = int32(inputnum);
    while num2 ~= inputnum || num2 < 0
        inputnum = input('Invalid! Please neter a postive integer: ');
        num2 = int32(inputnum);
    end % while
    fprintf('Thanks, you entered a %d \n', inputnum);
end