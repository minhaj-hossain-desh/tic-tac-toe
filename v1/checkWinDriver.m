clc; % clears cache
clear; % clears all variables

%% TEST CASE-1 
% Checking for winners horizontally i.e. row by row
grid = ['X' 'X' 'X';
        'O' 'X' 'O';
        'O' 'O' 'X'];
disp("When grid is: ")
disp(grid)
result= checkWin(grid);
if result==' '
fprintf("There is no winner\n\n");
end
fprintf("Winner is Player %c\n\n",result);

%% TEST CASE-2 
% Checking for winners vertically i.e. column by column
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

%% TEST CASE-3
% Checking for winners diagonally i.e. right diagonal or left diagonal
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
end