reveal_tile(row_position, column_position);
	
with (obj_tile) {
	instance_destroy(self);	
}
	
if obj_minefield.minefield_blueprint[row_position][column_position] == MINE {
	audio_play_sound_ext({ sound : snd_mine_hit });
}

tile_number = obj_minefield.minefield_display[row_position][column_position];
if tile_number == "0" {
	reveal_neighboring_tiles(row_position, column_position);	
}

draw_minefield_display_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);

// TODO: Play a sound when you click on an empty tile

// DEBUG: Prints tile's array index when clicked
// show_debug_message($"{row_position}, {column_position}")