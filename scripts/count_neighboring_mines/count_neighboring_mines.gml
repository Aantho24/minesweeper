function count_neighboring_mines(row, column) {
	neighboring_mine_count = 0;
	for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
		var column_scan = column + column_neighbor;
		// Passing this check means it's scanning outside minefield, so it skips it
		if column_scan < 0 or column_scan > NUMBER_OF_COLUMNS continue;
		// or (column_scan == 0 and row_scan == 0)
		
		if minefield[row][column_scan] == "X" neighboring_mine_count++;
		else continue;
	}
	return neighboring_mine_count;
}

/*
BUGGY VERSION, debug the current one and make sure it works on all edges before expanding

function count_neighboring_mines(row, column) {
	neighboring_mine_count = 0;
	for (var row_neighbor = -1; row_neighbor <= 1; row_neighbor++) {
		
		var row_scan = row + row_neighbor;
		if row_scan < 0 or row_scan > NUMBER_OF_ROWS continue; 
	
		for (var column_neighbor = -1; column_neighbor <= 1; column_neighbor++) {
			var column_scan = column + column_neighbor;
			// Passing this check means it's scanning outside minefield, so it skips it
			if column_scan < 0 or column_scan > NUMBER_OF_COLUMNS 
			or (column_scan == 0 and row_scan == 0) continue;
		
			if minefield[row][column_scan] == MINE neighboring_mine_count++;
			else continue;
		}
	
	}
	return neighboring_mine_count;
}
