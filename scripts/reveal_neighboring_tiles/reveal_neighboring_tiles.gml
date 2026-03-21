function reveal_neighboring_tiles(row, column) {
	for (var row_neighbor = -1; row_neighbor <= 1; row_neighbor++) {
		var row_scan = row + row_neighbor;
		
		if row_scan < 0 or row_scan >= obj_minefield.NUMBER_OF_ROWS continue;
		
		for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
			var column_scan = column + column_neighbor;
			// Passing this check means it's scanning outside minefield or itself, so it skips it
			if column_scan < 0 or column_scan >= obj_minefield.NUMBER_OF_COLUMNS {
				continue;
			} else {
				tile_number = obj_minefield.minefield_blueprint[row_scan][column_scan];
				if tile_number == "0" {
					obj_minefield.minefield_display[row_scan][column_scan] = CLICKED;	
				} else { // TODO: May need a seperate conditional for flagged tiles: if it detects one, continue
					obj_minefield.minefield_display[row_scan][column_scan] = obj_minefield.minefield_blueprint[row_scan][column_scan];
				}
			}
		}
	}
}