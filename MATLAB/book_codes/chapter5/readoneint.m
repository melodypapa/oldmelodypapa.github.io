function readoneint
% Error-check until the user enters an interger

inputnum = input('Enter an integer: ');
num2 = int32(inputnum);

while(num2 ~= inputnum)
    inputnum = input('invalid! Enter an integer: ');
    num2 = int32(inputnum);
end

fprintf('Thanks, you entered a %d \n', inputnum);
    
end