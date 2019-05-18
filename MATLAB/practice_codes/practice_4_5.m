% The script for the practice 4.5 Prompt the user for a string, and then
% print either the string that the user entered or an error message if the
% user did not enter anything.

str = input('Please enter a string:', 's');
if (~isempty(str))
    fprintf('You have entered the string <%s> \n', str)
else
    fprintf('You have not entered the string.\n')
end    