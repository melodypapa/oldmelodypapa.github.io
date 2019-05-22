function output = practice_5_8(matrix)
%matrowsum - calculate and return a vector of all of the row sums.
%
% Syntax: output = matrowsum(matrix)
 
[rows, cols] = size(matrix);
output = zeros(1:rows);
for row = 1: rows
    for col = 1:cols
        output(row) = output(row) + matrix(row, col);
    end
end

end