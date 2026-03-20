if position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left) {
	obj_minefield.playable_minefield[row_position][column_position] = obj_minefield.minefield_blueprint[row_position][column_position];
	
	with (obj_tile) {
		instance_destroy(self);	
	}
	
	draw_playable_minefield_tiles(obj_minefield.X_DRAW_START, obj_minefield.Y_DRAW_START);
	// show_debug_message($"{row_position}, {column_position}")
	
	if obj_minefield.minefield_blueprint[row_position][column_position] == MINE {
		audio_play_sound_ext({ sound : snd_mine_hit });
	}
}