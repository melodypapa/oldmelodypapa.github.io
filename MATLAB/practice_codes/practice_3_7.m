row = input('Please enter the row:');
column = input('Please enter the column:');

numbers = randi([1 100], row, column);
save datafile.dat numbers -ascii;