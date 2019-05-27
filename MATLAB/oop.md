# Object-Oriented Programming

## Class Definitions

```MATLAB
classdef ClassName

    properties
        prop1
        prop2
    end

    methods

        %Constructor fucntion
        function obj = ClassName(val1, val2)
            obj.prop1 = val1;
            obj.prop2 = val2;
        end
    end
end  
```

## Function Arguments

* nargin: Number of function input arguments.
* nargout: Number of function output arguments.
* varargin: Variable length input argument list.
* varargout: Variable length output argument list.
