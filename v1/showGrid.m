% The following function helps to display the grid that is created in
% 'gridLayout'. It prints all the elements of the array row by row
function [] = showGrid(grid)
    fprintf('  %c  %c  %c \n', grid(1, :));
    fprintf('  %c  %c  %c \n', grid(2, :));
    fprintf('  %c  %c  %c \n', grid(3, :));
end
