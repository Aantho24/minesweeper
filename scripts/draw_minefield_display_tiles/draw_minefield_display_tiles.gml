function draw_minefield_display_tiles(X_DRAW_START, Y_DRAW_START) {
	with (obj_tile) {
		instance_destroy(self);	
	}


	var x_draw = X_DRAW_START;
	var y_draw = Y_DRAW_START;

	for (var row = 0; row < obj_minefield.NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < obj_minefield.NUMBER_OF_COLUMNS; column++) {
			var tile = instance_create_layer(x_draw, y_draw, "Tiles", obj_tile);
			
			with (tile) {
				row_position = row;
				column_position = column;
				image_index = real(obj_minefield.minefield_display[row][column]);
			}
			
			x_draw += sprite_get_width(obj_tile.sprite_index);
		}
		x_draw = X_DRAW_START;
		y_draw += sprite_get_height(obj_tile.sprite_index);
	}
}