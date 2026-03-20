randomize();

// MINE is 9 because spr_tile's 9th image index is the mine tile 
#macro MINE "9"


NUMBER_OF_ROWS = 18;
NUMBER_OF_COLUMNS = 32;

minefield = initialize_minefield(NUMBER_OF_ROWS, NUMBER_OF_COLUMNS);


// This list decides where mines will spawn to ensure multiple mines don't get the same spot.
shuffled_indexes = create_shuffled_index_list();


NUMBER_OF_MINES = 100;
// Failsafe in case number of mines is a negative number or more than what can fit.
NUMBER_OF_MINES = min(NUMBER_OF_COLUMNS * NUMBER_OF_ROWS, NUMBER_OF_MINES);

spawn_mines_in_minefield(NUMBER_OF_MINES);



X_DRAW_START = 0;
Y_DRAW_START = 0;

create_minefield_blueprint();

draw_minefield_tiles(X_DRAW_START, Y_DRAW_START);

/*
LONG TERM PLAN:
1. Create a minefield array that's fully complete (0-9)
2. Create an empty version that the player will play on
	- Have it check the complete version every click and update it

*/

for (var row = 0; row < NUMBER_OF_ROWS; row++) {
	show_debug_message(minefield[row]);
}
show_debug_message($"There are {count_neighboring_mines(2, 2)} mines!")

// DEBUG: Print minefield
/*
for (var row = 0; row < NUMBER_OF_ROWS; row++) {
	show_debug_message(minefield[row]);
}