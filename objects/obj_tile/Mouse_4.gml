if minefield_display_tile != UNREVEALED and minefield_display_tile {
	exit;	
}

reveal_tile(row_position, column_position);
	
if obj_minefield.minefield_blueprint[row_position][column_position] == MINE {
	audio_play_sound_ext({ sound : snd_mine_hit });
}

tile_number = obj_minefield.minefield_display[row_position][column_position];
if tile_number == EMPTY {
	reveal_neighboring_tiles(row_position, column_position);	
}

draw_minefield_display_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);


// DEBUG: Prints tile's array index when clicked
// show_debug_message($"{row_position}, {column_position}")