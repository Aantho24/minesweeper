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