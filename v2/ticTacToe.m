% This is the main game function which is comprised of 3 individual
% sections, 'A' 'B' 'C'. 
function [] = ticTacToe()

%% Section A (Choosing the grid size to play)
    % This section of code prompts the user to input the gridSize they want
    % to play into, either 3x3 or 5x5.
    gridSize = input("Choose grid size - 3 for 3x3 grid and 5 for 5x5 grid: ");
    while gridSize ~= 3 && gridSize ~= 5 % if user enters any other number other than 3 or 5, it continues to ask the user to enter gridSize again until 3 or 5 is entered
        disp("Invalid grid size! Please choose 3 or 5.");
        gridSize = input("Choose grid size - 3 for 3x3 grid and 5 for 5x5 grid: ");
    end
%% Section B (Choosing the game mode to play i.e. multiplayer or computer)
    % Prompts the user to choose the game mode i.e. either input 1 to play
    % multiplayer or input 2 to play against the computer.
    gameModeChoice = input("Choose between the two game modes - 1 for multiplayer, 2 to play with computer: ");
    while gameModeChoice ~= 1 && gameModeChoice ~= 2 % if user enters number other than 1 or 2, it will continue to prompt the user to enter again
        disp("Invalid input, please enter either 1 or 2.");
        gameModeChoice = input("Choose between the two game modes - 1 for multiplayer, 2 to play with computer: ");
    end
%% Section C (Main game loop)
    % Initialising the grid and the currentPlayer who is playing the game
    grid = gridLayout(gridSize);
    currentPlayer = 'X';

    % Starting the main game while loop
    while true
        % Displaying the current empty grid to users
        disp('The current grid is: ');
        showGrid(grid);
        
        % The following lines of code is only executed if the user decides to
        % play multiplayer i.e. when gameModeChoice==1

        if gameModeChoice == 1
            % if user decides to play on a 5x5 grid
            if gridSize==5 
            correctMove = false; % initialising correctMove as false so that each time the loop is over, correctMove is resetted as false
            while ~correctMove % using a while loop to take input and validate the move
                row = input('Enter row (1-5): ');
                col = input('Enter column (1-5): ');

                if row < 1 || row > gridSize || col < 1 || col > gridSize || grid(row, col) ~= ' ' % conditions that make a move incorrect
                    disp('Incorrect move! Please try again.');
                else
                    correctMove = true; % if none conditions above match, the move is correct and correctValue is assigned a true value
                    grid(row, col) = currentPlayer; % the current player's symbol is placed on the cell
                end
            end % end of while loop that takes and validates input
            end 
            
            % if user decides to play on a 3x3 grid
            if gridSize==3 
            correctMove = false;  % initialising correctMove as false so that each time the loop is over, correctMove is resetted as false
            while ~correctMove % using a while loop to take input and validate the move
                row = input('Enter row (1-3): ');
                col = input('Enter column (1-3): ');

                if row < 1 || row > gridSize || col < 1 || col > gridSize || grid(row, col) ~= ' '  % conditions that make a move incorrect
                    disp('Incorrect move! Please try again.');
                else
                    correctMove = true; % if none conditions above match, the move is correct and correctValue is assigned a true value
                    grid(row, col) = currentPlayer; % the current player's symbol is placed on the cell
                end
            end % end of while loop that takes and validates input
            end 

%-----------------------------------------------------------------------------------------------------------------------------------------------%
        % if user chooses to play against computer i.e. when gameModeChoice==2, the following lines of code is executed
        else 
            if currentPlayer == 'X' % The user here plays as player X and the computer as Player O
                
                % if the user decides to play on a 5x5 grid
                if gridSize==5 
                correctMove = false;  % initialising correctMove as false so that each time the loop is over, correctMove is resetted as false
                while ~correctMove
                    row = input('Enter row (1-5): ');
                    col = input('Enter column (1-5): ');
                    if row < 1 || row > gridSize || col < 1 || col > gridSize || grid(row, col) ~= ' ' % conditions that make a move incorrect
                        disp('Incorrect move! Please try again.');
                    else
                        correctMove = true; % if none conditions above match, the move is correct and correctValue is assigned a true value
                        grid(row, col) = currentPlayer; % the current player's symbol is placed on the cell
                    end
                end
                end
                
                % if the user decides to play on a 3x3 grid
                if gridSize==3 
                correctMove = false; % initialising correctMove as false so that each time the loop is over, correctMove is resetted as false 
                while ~correctMove
                    row = input('Enter row (1-3): ');
                    col = input('Enter column (1-3): ');

                    if row < 1 || row > gridSize || col < 1 || col > gridSize || grid(row, col) ~= ' ' % conditions that make a move incorrect
                        disp('Incorrect move! Please try again.');
                    else
                        correctMove = true; % if none conditions above match, the move is correct and correctValue is assigned a true value
                        grid(row, col) = currentPlayer; % the current player's symbol is placed on the cell 
                    end
                end
                end

            % The following lines of code is executed when currentPlayer='O' i.e. the computer makes the move using the randi function
            else 

                correctMove = false; % initialising correctMove as false so that each time the loop is over, correctMove is resetted as false 
                while ~correctMove % using a while loop to make moves by the computer until the move is valid 
                    row = randi([1, gridSize]); % the computer randomly chooses a row value from 1-gridSize
                    col = randi([1, gridSize]); % the computer randomly chooses a column value from 1-gridSize
                    if grid(row, col) == ' ' % if the chosen (row,col) cell is an empty character cell, the move takes place and the move is validated as correct
                        correctMove = true;
                        grid(row, col) = currentPlayer; % the current player's symbol is placed on the cell
                    end
                end
            end % end of currentPlayer if statement
        end % end of gameModeChoice if statement

        % Checks for win or draw after every move is made
        result = checkWin(grid); % calling the checkWin function to check if there's a winner or not
        if result ~= ' ' % not space character ' ' means there is a winner
            showGrid(grid);
            fprintf("Player %c wins!\n", result); % displaying the winner
            break; % after winner has been displayed, the program exits from the main game loop and the game stops

        elseif checkDraw(grid) % space character ' ' in result exists meaning there's no winner and hence its a draw game, thus calling the checkDraw function
            showGrid(grid);
            fprintf("It's a draw!\n");% displaying that the game was a draw
            break;
        end

        % After every move is made, players are being switched
        if currentPlayer == 'X'
            currentPlayer = 'O';
        else
            currentPlayer = 'X';
        end
    end % end of main while loop
end




