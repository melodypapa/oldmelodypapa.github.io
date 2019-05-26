names = {'sue', 'Cathy', 'Xavier'};
for loop = 1:length(names)
    disp(length(names{loop}));
end %for

greetmat = char('Hello','Goodbye')
cellgreets = cellstr(greetmat)

iscellstr(greetmat)
iscellstr(cellgreets)