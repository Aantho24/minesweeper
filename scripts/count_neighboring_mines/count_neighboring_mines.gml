function count_neighboring_mines(row, column) {
	var neighboring_mine_count = 0;

	for (var row_neighbor = -1; row_neighbor <= 1; row_neighbor++) {
		var row_scan = row + row_neighbor;
		
		if row_scan < 0 or row_scan >= obj_minefield.NUMBER_OF_ROWS continue;
		
		for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
			var column_scan = column + column_neighbor;
			// Passing this check means it's scanning outside minefield or itself, so it skips it
			if column_scan < 0 or column_scan >= obj_minefield.NUMBER_OF_COLUMNS
			or (column_neighbor == 0 and row_neighbor == 0) continue;
		
			if obj_minefield.minefield[row_scan][column_scan] == MINE neighboring_mine_count++;
			else continue;
		}
	}
	return neighboring_mine_count;
}