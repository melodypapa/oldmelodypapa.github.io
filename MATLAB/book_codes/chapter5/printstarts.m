function printstarts(rows, columns) 
% Prints a box of stars
% How many will be specified by two variables
% for the num of rows and columns

for row = 1:rows
    for col = 1:columns
        fprintf('*')
    end
    fprintf('\n')
end

end % function