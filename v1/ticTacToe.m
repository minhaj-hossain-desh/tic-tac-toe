% This is the main game function which calls in all the other functions
% created to make the game working.

function []= ticTacToe()
    
    % initialising the gridLayout and currentplayer
    grid = gridLayout();
    currentPlayer = 'X';

    while true
        showGrid(grid);
        % Take player move
        correctMove = false; % correctMove is initialised as false so that it gets resetted each time the loop iterates
        % using a while loop to take input from user, validate the input
        % and check for wins or draws.
        while ~correctMove
            row = input('Enter row (1-3): ');
            col = input('Enter column (1-3): ');
            if grid(row, col) == ' ' % if the selected grid(row,col) cell is ' ' the move is correct
                correctMove = true;
                grid(row, col) = currentPlayer;
            else
                disp('Invalid move! Please try again.');
            end
        end

        % Checking for win or draw
        result = checkWin(grid); % calls checkWin function to check if there is a winner after each move
        if result ~= ' '
            fprintf("Player %c wins!", result);
            break; % breaks out of the game loop if winner is detected
        elseif checkDraw(grid) % if there is no winner, it must be a draw so checkDraw function is being called
            fprintf("It's a draw!");
            break;
        end

        % Switching players after every move
        if currentPlayer == 'X'
            currentPlayer = 'O';
        else
            currentPlayer = 'X';
        end
    end % end of while loop
end % end of function 
