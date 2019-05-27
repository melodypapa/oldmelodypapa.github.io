classdef HandleRect < handle

    properties
        len = 0;
        width = 0;
    end

    methods 
        function obj = HandleRect(l, w)
            if nargin == 2
                obj.len = l;
                obj.width = w;
            end
        end
        
        function outarg = rectarea(obj)
            outarg = obj.len * obj.width;
        end

        function disp(obj)
            fprintf('The rectangle has length %.2f', obj.len);
            fprintf(' and width %.2f \n', obj.width);
        end
    end
    
end