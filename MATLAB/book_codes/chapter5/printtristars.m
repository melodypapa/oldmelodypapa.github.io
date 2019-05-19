function printtristars(rows)
% printtristars - Prints a triangle of stars
% How many will be specified by a parameter rows_columns
% Syntax: printtristars(rows_columns)
%

for row = 1:rows
    for column = 1:row
        fprintf('*')
    end
    fprintf('\n')
end

end