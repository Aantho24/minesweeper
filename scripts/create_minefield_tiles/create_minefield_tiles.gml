function number_minefield_blueprint_tiles() {
	for (var row = 0; row < obj_minefield.NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < obj_minefield.NUMBER_OF_COLUMNS; column++) {
			if obj_minefield.minefield_blueprint[row][column] = MINE {
				continue;
			} else {
				neighboring_mines = string(count_neighboring_mines(row, column));
				obj_minefield.minefield_blueprint[row][column] = neighboring_mines;
			}
		}
	}
}

function draw_playable_minefield_tiles(X_DRAW_START, Y_DRAW_START) {

	var x_draw = X_DRAW_START;
	var y_draw = Y_DRAW_START;

	for (var row = 0; row < obj_minefield.NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < obj_minefield.NUMBER_OF_COLUMNS; column++) {
			var tile = instance_create_layer(x_draw, y_draw, "Tiles", obj_tile);
			
			with (tile) {
				row_position = row;
				column_position = column;
				image_index = real(obj_minefield.playable_minefield[row][column]);
			}
			
			x_draw += sprite_get_width(obj_tile.sprite_index);
		}
		x_draw = X_DRAW_START;
		y_draw += sprite_get_height(obj_tile.sprite_index);
	}
}

/*
Function could be used to draw minefield every unclicked tile click

function create_minefield_tiles(X_DRAW_START, Y_DRAW_START) {

	var x_draw = X_DRAW_START;
	var y_draw = Y_DRAW_START;

	for (var row = 0; row < obj_minefield.NUMBER_OF_ROWS; row++) {
		for (var column = 0; column < obj_minefield.NUMBER_OF_COLUMNS; column++) {
			var tile = instance_create_layer(x_draw, y_draw, "Tiles", obj_tile);
			
			with (tile) {
				row_position = row;
				column_position = column;
			}
		
			if obj_minefield.minefield[row][column] = MINE {
				with (tile) {
					image_index = MINE;
				}
			} else {
				neighboring_mines = count_neighboring_mines(row, column);
				obj_minefield.minefield[row][column] = string(neighboring_mines);
				with (tile) {
					image_index = count_neighboring_mines(row, column);
				}	
			}
		
			x_draw += sprite_get_width(obj_tile.sprite_index);
		}
		x_draw = X_DRAW_START;
		y_draw += sprite_get_height(obj_tile.sprite_index);
	}
}