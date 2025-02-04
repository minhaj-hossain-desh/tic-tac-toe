% The following function checks if there's an empty space character cell available in the
% vector or not, if no, this means all cells have been filled by the user,
% hence, its a draw game as no-one won.

function draw = checkDraw(grid)
    draw = all(grid ~= ' '); % returns a logical value 1 to draw if the statement is true
end
