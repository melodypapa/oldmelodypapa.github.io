function outmat = signum(matrix)
%signum - imitates the sign function
%
% Syntax: outmat = signum(matrix)

[rows, cols] = size(matrix);
outmat = zeros(rows, cols);

for row = 1: rows
    for col = 1:cols
        num = matrix(row, col);
        if (num > 0)
            outmat(row, col) = 1;
        elseif (num < 0)
            outmat(row, col) = -1;
        else
            outmat(row, col) = 0;
        end
    end
end

end