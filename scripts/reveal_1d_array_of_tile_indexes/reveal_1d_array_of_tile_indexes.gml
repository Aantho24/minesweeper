function reveal_1d_array_of_tile_indexes(array) {
	for (var index = 0; index < array_length(array); index++) {
		var two_dimensional_index = turn_1d_index_to_2d_index(array[index]);
		var row = two_dimensional_index[0];
		var column = two_dimensional_index[1];
		
		reveal_tile(row, column);
	}
}