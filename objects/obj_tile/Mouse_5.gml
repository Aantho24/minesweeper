if minefield_display_tile == UNREVEALED {
	obj_minefield.minefield_display[row_position][column_position] = FLAGGED;
} else if minefield_display_tile == FLAGGED {
	obj_minefield.minefield_display[row_position][column_position] = UNREVEALED;	
}

draw_minefield_display_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);