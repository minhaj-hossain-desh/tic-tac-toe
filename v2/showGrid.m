% The following function facilitates in displaying the grid we created in
% the function "gridLayout". It takes the array "grid" as input and
% displays the grid for the game according to the choice of user either 3x3
% or 5x5 grid.

function [] = showGrid(grid)
if size(grid)==3 %if no. of rows in array is 3, it will display a 3x3 grid
    fprintf('  %c | %c | %c \n', grid(1, :)); % prints all the elements of row 1
    fprintf(' ---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c \n', grid(2, :)); % prints all the elements of row 2
    fprintf(' ---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c \n', grid(3, :)); % prints all the elements of row 3

elseif size(grid)==5 %if no. of rows in array is 5, it will display a 5x5 grid
    fprintf('  %c | %c | %c | %c | %c \n', grid(1, :)); % prints all the elements of row 1
    fprintf(' ---|---|---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c | %c | %c \n', grid(2, :)); % prints all the elements of row 2
    fprintf(' ---|---|---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c | %c | %c \n', grid(3, :)); % prints all the elements of row 3
    fprintf(' ---|---|---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c | %c | %c \n', grid(4, :)); % prints all the elements of row 4
    fprintf(' ---|---|---|---|---\n'); % prints out the grid lines
    fprintf('  %c | %c | %c | %c | %c \n', grid(5, :)); % prints all the elements of row 5

end

end
