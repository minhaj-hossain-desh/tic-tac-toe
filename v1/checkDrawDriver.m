clc; % clears cache
clear; % clears all variables
%% TEST CASE-1
grid = ['X' 'O' 'X';
        'X' 'O' 'O';
        'O' 'X' 'X'];
disp("When grid is: ")
disp(grid)
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw");
end

%% TEST CASE-2
grid = ['X' 'O' 'X';
        'X' 'X' 'O';
        'O' 'X' ' '];
disp("When grid is: ")
disp(grid)
draw= checkDraw(grid);
if draw==1
    fprintf("It is a draw\n\n");
else
    fprintf("It is not a draw");
end


