function runsum = sumnnus(n)
    % sumnnums results the sun of the n numbers entered by the user
    % Format of call: sumnnus(n)
    
    runsum = 0;
    for i = 1:n
        inputnum = input('Enter a number:');
        runsum = runsum + inputnum;
    end % for

end % function