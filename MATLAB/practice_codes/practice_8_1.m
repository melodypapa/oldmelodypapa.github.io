names = {'Sue', 'Cathy', 'Xavier'};
cellmat = {23 'a'; 1:2:9 'hello'};

display_random(names);
display_random(cellmat);

function display_random(cellvalues)
    num = randi([1, length(cellvalues)]);
    disp(cellvalues{num});
end 