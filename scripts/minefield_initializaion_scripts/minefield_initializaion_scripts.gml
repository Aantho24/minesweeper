function initialize_minefield(NUMBER_OF_ROWS, NUMBER_OF_COLUMNS) {
	var minefield_buffer = [];
	
	for (var row = 0; row < NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < NUMBER_OF_COLUMNS; column++) {
			minefield_buffer[row][column] = UNREVEALED;
		}
	}
	
	return minefield_buffer;
}

function create_shuffled_index_list() {
	var shuffled_indexes = [];
	var HIGHEST_INDEX = (obj_minefield.NUMBER_OF_ROWS * obj_minefield.NUMBER_OF_COLUMNS) - 1;

	for (var index = 0; index <= HIGHEST_INDEX; index++) {
		shuffled_indexes[index] = index;
	}

	shuffled_indexes = array_shuffle(shuffled_indexes);

	return shuffled_indexes;
}

function spawn_mines_in_minefield(NUMBER_OF_MINES) {
	for (var i = 0; i < NUMBER_OF_MINES; i++) {
		var mine_index = obj_minefield.shuffled_indexes[i];

		var mine_index_row = floor(mine_index / obj_minefield.NUMBER_OF_COLUMNS);
		var mine_index_column = mine_index % obj_minefield.NUMBER_OF_COLUMNS;

		obj_minefield.minefield_blueprint[mine_index_row][mine_index_column] = MINE;
	}	
}