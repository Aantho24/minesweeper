randomize();

// MINE is 9 because spr_tile's 9th image index is the mine tile. Same logic with the rest of them.
#macro MINE "9"
#macro UNREVEALED "10"
#macro EMPTY "0"


NUMBER_OF_ROWS = 16;
NUMBER_OF_COLUMNS = 30;

minefield_blueprint = initialize_minefield(NUMBER_OF_ROWS, NUMBER_OF_COLUMNS);


// This list decides where mines will spawn to ensure multiple mines don't get the same spot.
shuffled_indexes = create_shuffled_index_list();


NUMBER_OF_MINES = 99;
// Failsafe in case number of mines is a negative number or more than what can fit.
NUMBER_OF_MINES = min(NUMBER_OF_COLUMNS * NUMBER_OF_ROWS, NUMBER_OF_MINES);

spawn_mines_in_minefield(NUMBER_OF_MINES);



X_DRAW_START = 0;
Y_DRAW_START = 0;

number_minefield_blueprint_tiles();

minefield_display = initialize_minefield(NUMBER_OF_ROWS, NUMBER_OF_COLUMNS);


draw_minefield_display_tiles(X_DRAW_START, Y_DRAW_START);




/*
DEBUG: Print minefield_blueprint
for (var row = 0; row < NUMBER_OF_ROWS; row++) {
	show_debug_message(minefield_blueprint[row]);
}

DEBUG: Count the mines neighboring a given tile
show_debug_message($"There are {count_neighboring_mines(0, 0)} mines!")
*/