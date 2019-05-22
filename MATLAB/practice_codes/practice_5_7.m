function result = practice_5_7(vector)
%practice_5_7 - imitates the cumprod function. Use the method of preallocating the output vector
%
% Syntax: result = cumprod(vector)

result = ones(size(vector));

intermediate_result = 1;
for loop = 1: length(vector)
    intermediate_result = intermediate_result * vector(loop);
    result(loop) = intermediate_result;
end % for

end