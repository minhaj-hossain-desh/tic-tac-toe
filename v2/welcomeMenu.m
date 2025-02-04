function [] = welcomeMenu()
disp("WELCOME TO THE TIC TAC TOE GAME!");
fprintf("\n");
disp("The following are the simple rules of playing the game: ");
disp("* The game prompts the user to play in two boards, either 3x3 or 5x5 grid.");
disp("* It then asks the user to choose the game mode - input 1 to play multiplayer and 2 to play against computer.");
disp("* If user decides to play against computer, then user is player X and computer is Player O.")
disp("* The user chooses the row and column to make their move.");
disp("* The player who gets three of its symbols matched first horizontally, vertically or diagonally wins the game.");
disp("* If there is no winner and if cells are filled with symbols and there's no empty space character cell left, the game ends and declares it as a draw.");
fprintf("\n");
disp("LET'S BEGIN THE GAME!");
fprintf("\n");
end