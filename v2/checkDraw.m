% The function checkDraw here takes the array "grid" as input and checks
% every element in the array for empty space character ' ' cells, if no such cells exist,
% this means all cells have been filled and the function returns a logical
% value 1 suggesting the game is a draw.

function draw = checkDraw(grid)
    draw = all(grid ~= ' ');
end
