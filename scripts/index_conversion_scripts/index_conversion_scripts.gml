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