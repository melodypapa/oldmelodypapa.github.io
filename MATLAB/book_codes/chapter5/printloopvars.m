function printloopvars
%printloopvars - Displays the loop variables
%
% Syntax: printloopvars
%
    
for outter = 1:3
    for inner = 1:2
        fprintf('outter = %d, inner = %d\n', outter, inner);
    end
    fprintf('\n');
end

end