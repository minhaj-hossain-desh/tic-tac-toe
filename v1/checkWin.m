% This function checks if there is a winner or not after every move. It
% checks the grid horizontally, vertically and diagonally. 
function result = checkWin(grid)

    % Checks rows to find winner horizontally
    for i = 1:3
        if grid(i, 1) == grid(i, 2) && grid(i, 2) == grid(i, 3) && grid(i, 1) ~= ' '
            result = grid(i, 1); % if symbol of a player matches a particular row, winner is detected and result is assigned the player symbol. 
            return;
        end
    end

    % Checks columns to find winner vertically
    for i = 1:3
        if grid(1, i) == grid(2, i) && grid(2, i) == grid(3, i) && grid(1, i) ~= ' '
            result = grid(1, i); % if symbol of a player matches a particular column, winner is detected and result is assigned the player symbol.
            return;
        end
    end

    % Checks diagonals to find winner diagonally (right and left diagonal)
    if (grid(1, 1) == grid(2, 2) && grid(2, 2) == grid(3, 3)) || (grid(1, 3) == grid(2, 2) && grid(2, 2) == grid(3, 1))
        result = grid(2, 2); %if symbol of a player matches a diagonal winner is detected and result is assigned the player symbol.
        return;
    end

    % If none if statements get executed, then there's no winner and result
    % is assigned an 'empty' space character.
    result = ' ';
end
