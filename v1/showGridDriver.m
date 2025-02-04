clc; % clears cache
clear; % clears all variables

%% TEST CASE-1
% running the function normally 
grid=gridLayout(); % assigning the 3x3 array to grid
showGrid(grid) % providing grid as input to the function in order to display the grid
%% TEST CASE-2
grid=gridLayout(); 
showGrid(board) % not providing the correct input parameter array flags an error