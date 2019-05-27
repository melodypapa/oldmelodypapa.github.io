classdef SimpleClassii

    properties 
        x
        y = 33
    end

    methods 
        function obj = SimpleClassii(varargin)
            if (nargin == 0)
                obj.x = 0;
            elseif nargin == 1
                obj.x = varargin{1};
            else
                obj.x = varargin{1};
                obj.y = varargin{2};
            end
        end

        function outarg = ordMethod(obj, arg1)
            outarg = obj.x + obj.y + arg1;
        end
    end
    
end

