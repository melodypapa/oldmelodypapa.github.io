function printcylvols(cyls)
    %printcylvols - prints the volumes of each cylinder
    % in a specialized structure
    %
    % Syntax:  printcylvols(cyls)
    %

    for i = 1:length(cyls)
        vol = cylvol(cyls(i).dimensions);
        fprintf('Cylinder %c has a volumne of %.1f in ^3 \n', ...
            cyls(i).code, vol);
    end % for

end

function cvol = cylvol(dims)
    %cylvol - calculates the volume of a cylinder
    %
    % Syntax: cvol = cylvol(dims)
    %
    cvol = pi * dims.rad^2 * dims.height;
end
