myvec = zeros(1,7);
for loop = 0:6
    myvec(loop + 1) = sqrt(loop/2);
end
   
%mat = [0 4 -3; -1 0 2];


%{
 [r, c] = size(mat);
newmat = zeros(r,c);
for i = 1:r
    for j = 1:c
        newmat(i,j) = sign(mat(i,j));
    end
end
 
%}

newmat = sign(mat);