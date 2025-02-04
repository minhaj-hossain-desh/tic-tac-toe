clc; %clears cache
clear; %clears all variables
%% TEST CASE-1
% When its actually a draw game in both 3x3 and 5x5 grids
grid = ['X' 'O' 'X';
        'X' 'O' 'O';
        'O' 'X' 'X'];
disp("When grid is: ")
disp(grid);
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw\n\n");
end

grid = ['X' 'O' 'X' 'O' 'X';
        'X' 'O' 'O' 'X' 'X';
        'O' 'X' 'X' 'O' 'O';
        'X' 'O' 'O' 'X' 'X';];
disp("When grid is: ")
disp(grid)
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw\n\n");
end
%% TEST CASE-2
% When its not a draw in both 3x3 and 5x5 grids
grid = ['X' 'O' 'X';
        'X' 'X' 'O';
        'O' 'X' ' '];
disp("When grid is: ")
disp(grid);
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw\n\n");
end

grid = ['X' 'O' 'X' 'O' 'X';
        'X' 'O' 'O' 'X' 'X';
        'O' 'X' ' ' 'O' 'O';
        'X' 'O' 'O' 'X' 'X';];
disp("When grid is: ")
disp(grid)
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw\n\n");
end

