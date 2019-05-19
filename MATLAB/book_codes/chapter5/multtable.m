function outmat = multtable(rows, columns)
% multitable returns a matrix which is a multiplication table 
%
% Syntax: outmat = multtable(rows, columns)

outmat = zeros(rows, columns)

for row = 1: rows
    for column = 1: columns
        outmat(row, column) = row * column
    end
end

end