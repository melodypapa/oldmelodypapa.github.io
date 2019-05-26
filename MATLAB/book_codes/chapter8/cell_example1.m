cellrowvec = {23, 'a', 1:2:9, 'hello'}
cellcolvec = {23; 'a'; 1:2:9; 'hello'}
cellmat = {23  'a'; 1:2:9  'hello'}
class(cellmat)

mycellmat = cell(2,2)

cellrowvec{2}
cellmat{1,1}

mycellmat{1,1} = 23

cellcolvec{2}
cellcolvec(2)

cellmat(2,1)
cellmat{2,1}
cellmat{2,1}(4)

celldisp(cellrowvec);

length(cellrowvec)
size(cellcolvec)
cellrowvec{end}

