clc;% clears all cache
clear; % clears all variables

%% TEST CASE-1
% Just running the function normally 
test1=gridLayout() % creates an empty 3x3 character array

%% TEST CASE-2
% Providing parameters as input
test2=gridLayout(1); % shows an error as the gridLayout function doesnt take any input parameter
