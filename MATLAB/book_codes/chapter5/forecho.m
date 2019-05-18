function forecho
    for iv = 1:3
        inputnum = input('Enter a number:');
        fprintf('You entered is %.1f \n', inputnum);
    end
end