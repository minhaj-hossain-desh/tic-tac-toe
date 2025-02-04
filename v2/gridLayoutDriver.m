clc; % clears cache
clear; % clears all variables

%% TEST CASE-1
% running it normally i.e. when gridSize=3 or gridSize=5
gridSize=3;
fprintf("When gridSize=%d: ",gridSize);
gridLayout(gridSize) % displays a 3x3 character array

gridSize=5;
gridLayout(gridSize) % displays a 5x5 character array

%% TEST CASE-2
% providing invalid input
gridSize=-1;
fprintf("When gridSize=%d: \n",gridSize);
gridLayout(gridSize) % Doesn't show any outptut as expected

gridSize=30;
fprintf("When gridSize=%d: \n",gridSize);
gridLayout(gridSize) % Doesn't show any output as expected