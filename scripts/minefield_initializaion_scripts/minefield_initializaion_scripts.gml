function initialize_minefield(NUMBER_OF_ROWS, NUMBER_OF_COLUMNS) {
	var minefield_buffer = [];
	
	for (var row = 0; row < NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < NUMBER_OF_COLUMNS; column++) {
			minefield_buffer[row][column] = UNREVEALED;
		}
	}
	
	return minefield_buffer;
}

function create_shuffled_1d_index_list() {
	var shuffled_1d_indexes = [];
	var HIGHEST_INDEX = (obj_minefield.NUMBER_OF_ROWS * obj_minefield.NUMBER_OF_COLUMNS) - 1;

	for (var index = 0; index <= HIGHEST_INDEX; index++) {
		shuffled_1d_indexes[index] = index;
	}

	shuffled_1d_indexes = array_shuffle(shuffled_1d_indexes);

	return shuffled_1d_indexes;
}

function spawn_mines_in_minefield(NUMBER_OF_MINES) {
	for (var i = 0; i < NUMBER_OF_MINES; i++) {
		var mine_index = obj_minefield.shuffled_1d_indexes[i];
		
		mine_index = turn_1d_index_to_2d_index(mine_index);

		obj_minefield.minefield_blueprint[mine_index[0]][mine_index[1]] = MINE;
	}	
}

function turn_2d_index_into_1d_index(row, column) {
	return (obj_minefield.NUMBER_OF_COLUMNS * row) + column;
}

function turn_1d_index_to_2d_index(one_dimensional_index) {
	var two_dimensional_index = []
	
	var row  = floor(one_dimensional_index / obj_minefield.NUMBER_OF_COLUMNS);
	var column = one_dimensional_index % obj_minefield.NUMBER_OF_COLUMNS;
	
	two_dimensional_index[0] = row;
	two_dimensional_index[1] = column;
	
	return two_dimensional_index;
}