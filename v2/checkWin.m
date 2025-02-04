% The function "checkWin" checks the array "grid" diagonally, vertically
% and horizontally to identify whether player X or player O is the winner.

function result = checkWin(grid)
%% Section A (If the user decides to play on a 3x3 grid)
if size(grid)==3
    % Checks the rows i.e. if an entire row matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    for i = 1:3
        if grid(i, 1) == grid(i, 2) && grid(i, 2) == grid(i, 3) && grid(i, 1) ~= ' ' 
            result = grid(i, 1); % assigns the player who won the game
            return;
        end
    end

    % Checks the columns i.e. if an entire column matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    for i = 1:3
        if grid(1, i) == grid(2, i) && grid(2, i) == grid(3, i) && grid(1, i) ~= ' '
            result = grid(1, i);
            return;
        end
    end

    % Checks whether right or left diagonal matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    if (grid(1, 1) == grid(2, 2) && grid(2, 2) == grid(3, 3)) || (grid(1, 3) == grid(2, 2) && grid(2, 2) == grid(3, 1))
        result = grid(2, 2);
        return;
    end

    % If there is no winner
    result = ' '; % an empty space character is returned to result if there is no winner
end
%% Section B (If user chooses to play on a 5x5 grid)
if size(grid)==5
    % Checks the rows i.e. if an entire row matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    for i = 1:5
        if grid(i, 1) == grid(i, 2) && grid(i, 2) == grid(i, 3) && grid(i, 3) == grid(i, 4) && grid(i, 4) == grid(i, 5) && grid(i, 1) ~= ' '
            result = grid(i, 1);
            return;
        end
    end

    % Checks the columns i.e. if an entire column matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    for i = 1:5
        if grid(1, i) == grid(2, i) && grid(2, i) == grid(3, i) && grid(3, i) == grid(4, i) && grid(4, i) == grid(5, i) && grid(1, i) ~= ' '
            result = grid(1, i);
            return;
        end
    end

    % Checks whether right or left diagonal matches a particular player
    % symbol (X or O), the winner (result) is given that value.
    if (grid(1, 1) == grid(2, 2) && grid(2, 2) == grid(3, 3) && grid(3,3)==grid(4,4) && grid(4,4)==grid(5,5)) || (grid(1, 5) == grid(2, 4) && grid(2, 4) == grid(3, 3) && grid(3,3)==grid(4,2)&& grid(4,2)==grid(5,1))
        result = grid(1, i);
        return;
    end

    % If there is no winner
    result = ' ';
end
end


