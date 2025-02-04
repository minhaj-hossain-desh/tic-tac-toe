% The function gridLayout creates an array of space characters to build the
% grid for the game. It takes gridSize as input i.e. 3 or 5 depending on
% user choice and creates an array accordingly. 

function grid = gridLayout(gridSize)
    if gridSize==3 % if user enters 3 as gridSize, it creates a 3x3 array
        grid = [' ', ' ', ' ';
                ' ', ' ', ' ';
                ' ', ' ', ' '];
    

    elseif gridSize==5 % if user enters 5 as gridSize, it creates a 5x5 array
        grid = [' ', ' ', ' ', ' ', ' ';
                ' ', ' ', ' ', ' ', ' ';
                ' ', ' ', ' ', ' ', ' ';
                ' ', ' ', ' ', ' ', ' ';
                ' ', ' ', ' ', ' ', ' '];
    else
        fprintf("Invalid input\n");

    end
end
