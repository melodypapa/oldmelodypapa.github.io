classdef Box < Rectangle

    properties
        height = 0;
    end

    methods

        function obj = Box(l, w, h)

            if (nargin < 3)
                l = 0;
                w = 0;
                h = 0;
            end

            obj@Rectangle(l, w)
            obj.height = h;
        end

        function out = calcvol(obj)
            out = obj.len * obj.width * obj.height;
        end

        function disp(obj)
            fprintf('The box has a length of %.2f,', obj.len);
            fprintf(' width %.2f\n and height %.2f\n', ...
                obj.width, obj.height);
        end

    end

end
