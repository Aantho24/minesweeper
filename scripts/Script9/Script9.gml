function return_all_unrevealed_tiles_neighboring_empty_tiles() {
	var unrevealed_tiles = [];
	var array_buffer = [];
	
	for (var row = 0; row < obj_minefield.NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < obj_minefield.NUMBER_OF_COLUMNS; column++) {
			var tile_state = obj_minefield.minefield_display[row][column];
			
			if tile_state == EMPTY array_buffer = return_neighboring_unrevealed_tiles(row, column);
			
			for (var i = 0; i < array_length(array_buffer); i++) array_push(unrevealed_tiles, array_buffer[i]);
			
			array_buffer = [];
		}
	}
	return unrevealed_tiles
}

function reveal_1d_array_of_tile_indexes(array) {
	for (var index = 0; index < array_length(array); index++) {
		var two_dimensional_index = turn_1d_index_to_2d_index(array[index]);
		var row = two_dimensional_index[0];
		var column = two_dimensional_index[1];
		
		reveal_tile(row, column);
	}
}

/*
	tile_number = obj_minefield.minefield_display[row_position][column_position];
	if tile_number == EMPTY {
		var test = return_neighboring_unrevealed_tiles(row_position, column_position);
		show_debug_message(test);
		// reveal_neighboring_tiles(row_position, column_position);	
	}