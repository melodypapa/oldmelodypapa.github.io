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

## Overlaoding Function and Operators

* [Arithmetic](https://ww2.mathworks.cn/help/matlab/arithmetic-operators.html?lang=en)
* [Relational Operations](https://ww2.mathworks.cn/help/matlab/relational-operators.html?lang=en)
* [Logical Operations](hhttps://ww2.mathworks.cn/help/matlab/logical-operations.html?lang=en)
* [Set Operations](https://ww2.mathworks.cn/help/matlab/set-operations.html?lang=en)
* [Bit-Wise Operations](https://ww2.mathworks.cn/help/matlab/bit-wise-operations.html?lang=en)

## Inheritance

```MATLAB
classdef MySubclass < Superclass
    properties
        prop3
    end

    methods
        % Constructor function
        fucntion obj = MySubclas(val1, val2, val3)
            obj@Superclass(val1,val2);
            obj.prop3 = val3;
        end
    end
end
```