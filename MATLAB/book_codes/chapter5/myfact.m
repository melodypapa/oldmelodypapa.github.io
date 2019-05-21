function output = myfact(n)
%myfact - return n!
%
% Syntax: output = myfact(n)

format compact;

output = 1;
for loop = 1:n
    output = output * loop;
end

end