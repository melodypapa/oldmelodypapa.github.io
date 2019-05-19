function facgt = factgthigh(high)
%factgthigh - returns the first factorial > input
%
% Syntax: facgt = factgthigh(high)
%
    
i = 0;
facgt = 1;

while(facgt <= high)
    i = i + 1;
    facgt = facgt * i;
end

end