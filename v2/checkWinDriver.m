clc; % clears cache
clear; % clears all variables

%% TEST CASE-1 
% Checking for winners horizontally i.e. row by row in 3x3 and 5x5 grids
fprintf("Checking winner horizontally - \n");
grid = ['O' 'X' 'X';
        'O' 'O' 'O';
        'X' 'O' 'O'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

grid = ['X' 'X' 'X' 'X' 'X' ;
        'O' 'X' 'O' 'O' 'O';
        'O' 'X' 'O' 'O' 'O';
        'O' 'O' 'X' 'X' 'O';
        'O' 'X' 'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

%% TEST CASE-2 
% Checking for winners vertically i.e. column by column in 3x3 and 5x5 grids
fprintf("Checking winner vertically - \n");
grid = ['X' 'O' 'X';
        'X' 'O' 'O';
        'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

grid = ['X' 'X' 'O' 'O' 'X' ;
        'O' 'X' 'O' 'O' 'O';
        'O' 'X' 'O' 'O' 'O';
        'O' 'X' 'X' 'X' 'O';
        'O' 'X' 'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

%% TEST CASE-3
% Checking for winners diagonally i.e. right diagonal or left diagonal in
% 3x3 and 5x5 grids
fprintf("Checking winner diagonally - \n");

% checks for left diagonal
grid = ['X' 'O' 'X';
        'X' 'X' 'O';
        'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

% checks for right diagonal
grid = ['X' 'X' 'O';
        'X' 'O' 'O';
        'O' 'X' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

% checks for left diagonal
grid = ['X' 'X' 'O' 'O' 'X' ;
        'O' 'X' 'O' 'O' 'O';
        'O' 'X' 'X' 'O' 'O';
        'O' 'X' 'X' 'X' 'O';
        'O' 'X' 'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

% checks for right diagonal
grid = ['X' 'X' 'O' 'X' 'O' ;
        'O' 'X' 'O' 'O' 'O';
        'O' 'X' 'O' 'X' 'O';
        'O' 'O' 'X' 'X' 'O';
        'O' 'X' 'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

%% TEST CASE-4
% If there is no winner
grid = ['X' 'O' 'X';
        'X' 'O' 'O';
        'O' 'X' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
else
    fprintf("Winner is Player %c\n\n",result);
end

grid = ['X' 'X' 'O' 'X' 'O' ;
        'O' 'O' 'O' 'X' 'O';
        'O' 'X' 'O' 'X' 'O';
        'O' 'O' 'X' 'X' 'O';
        'O' 'X' 'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
else
    fprintf("Winner is Player %c\n\n",result);
end
