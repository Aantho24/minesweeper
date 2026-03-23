function return_neighboring_unrevealed_tiles(row, column) {
	var unrevealed_tiles = [];
	
	for (var row_neighbor = -1; row_neighbor <= 1; row_neighbor++) {
		var row_scan = row + row_neighbor;
		
		if row_scan < 0 or row_scan >= obj_minefield.NUMBER_OF_ROWS continue;
		
		for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
			var column_scan = column + column_neighbor;
			// Passing this check means it's scanning outside minefield or itself, so it skips it
			if column_scan < 0 or column_scan >= obj_minefield.NUMBER_OF_COLUMNS
			or (column_neighbor == 0 and row_neighbor == 0) continue;
		
			var current_tile = obj_minefield.minefield_display[row_scan][column_scan];
			if current_tile == UNREVEALED array_push(unrevealed_tiles, turn_2d_index_into_1d_index(row_scan, column_scan));
			else continue;
		}
	}
	
	return unrevealed_tiles;
}

/*
TODO:
This function will either return an array of the incomplete tiles, or return false
