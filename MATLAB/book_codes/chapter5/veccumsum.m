function outvec = veccumsum(vec)
%veccumsum - cumsum for a vector
%
% Syntax: outvec = veccumsum(ve)

outvec = zeros(size(vec));
runsum = 0;
for loop = 1:length(vec)
    runsum = runsum + vec(loop);
    outvec(loop) = runsum;
end % for 

end