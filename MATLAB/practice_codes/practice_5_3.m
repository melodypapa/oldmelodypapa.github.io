mat = [7 11 3; 3:5];
[r, c] = size(mat);
for i = 1:r
   fprintf('The sum is %d\n', sum(mat(i,:)))
end

for i = 1:2
   fprintf('%d: ', i)
   for j = 1:4
     fprintf('%d ', j)
   end
   fprintf('\n')
end