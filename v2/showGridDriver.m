clc; % clears cache
clear; % clears all variables

%% TEST CASE-1
% running the function normally i.e. when gridSize=3 or gridSize=5
gridSize=3;
fprintf("When gridSize=%d: \n",gridSize);
grid = gridLayout(gridSize); 
showGrid(grid) % displays a 3x3 grid
fprintf("\n");

gridSize=5;
fprintf("When gridSize=%d: \n",gridSize);
grid = gridLayout(gridSize);
showGrid(grid) % displays a 5x5 grid
fprintf("\n");

%% TEST CASE-2
% Invalid input testing
gridSize=1;
fprintf("When gridSize=%d: \n",gridSize);
grid = gridLayout(gridSize);
showGrid(grid) % displays invalid input and flags an error
fprintf("\n");