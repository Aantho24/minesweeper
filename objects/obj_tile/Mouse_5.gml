if minefield_display_tile == tile_states.unrevealed {
	obj_minefield.minefield_display[row_position][column_position] = tile_states.flagged;
} else if minefield_display_tile == tile_states.flagged {
	obj_minefield.minefield_display[row_position][column_position] = tile_states.unrevealed;	
}

draw_minefield_display_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);