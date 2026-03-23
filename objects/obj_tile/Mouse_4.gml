if minefield_display_tile != tile_states.unrevealed and minefield_display_tile {
	exit;	
}

reveal_tile(row_position, column_position);

	
if obj_minefield.minefield_blueprint[row_position][column_position] == tile_states.mine {
	audio_play_sound_ext({ sound : snd_mine_hit });
}

tile_number = obj_minefield.minefield_display[row_position][column_position];
if tile_number == tile_states.empty {
	while array_length(return_all_unrevealed_tiles_neighboring_empty_tiles()) != 0 {
		var unrevealed_tiles = return_all_unrevealed_tiles_neighboring_empty_tiles();
		reveal_1d_array_of_tile_indexes(unrevealed_tiles);
	}
}

draw_minefield_display_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);


// DEBUG: Prints tile's array index when clicked
// show_debug_message($"{row_position}, {column_position}")