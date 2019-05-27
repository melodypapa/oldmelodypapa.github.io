classdef  SimpleClass
    properties
        x
        y = 33;
    end

    methods 
        function obj = SimpleClass(val1, val2)
            if (nargin == 2)
                obj.x = val1;
                obj.y = val2;
            end
        end
    end
end