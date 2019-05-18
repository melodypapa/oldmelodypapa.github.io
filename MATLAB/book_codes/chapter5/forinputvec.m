function numvec = forinputvec(n)
% forinputvec results a vector of length n
% It prompts the user and puts n numbers into a vector
% Format: forinputvec(n)

numvec = zeros(1, n);
for iv = 1:n
    inputnum = input('Enter a number:');
    numvec(iv) = inputnum;
end % for

end % function