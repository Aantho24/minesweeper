function reveal_neighboring_tiles(row, column) {
	for (var row_neighbor = -1; row_neighbor <= 1; row_neighbor++) {
		var row_scan = row + row_neighbor;
		
		if row_scan < 0 or row_scan >= obj_minefield.NUMBER_OF_ROWS continue;
		
		for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
			var column_scan = column + column_neighbor;
			// Passing this check means it's scanning outside minefield or itself, or the tile has already been revealed, so it skips it
			if column_scan < 0 or column_scan >= obj_minefield.NUMBER_OF_COLUMNS or obj_minefield.minefield_display[row_scan][column_scan] != UNREVEALED {
				continue;
			} else if obj_minefield.minefield_blueprint[row_scan][column_scan] == UNREVEALED {
				// This conditional is needed to reveal the empty tiles
				obj_minefield.minefield_display[row_scan][column_scan] = EMPTY;	
			} else {
				reveal_tile(row_scan, column_scan);
			} // TODO: May need a seperate conditional for flagged tiles: if it detects one, continue
		}
	}
}