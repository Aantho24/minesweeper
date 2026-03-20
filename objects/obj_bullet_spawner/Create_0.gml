BULLET_SPAWN_SECONDS = 1;

time_source = time_source_create(time_source_game, BULLET_SPAWN_SECONDS, time_source_units_seconds, function() {
	instance_create_layer(0, 0, "Bullets", obj_bullet);
}, [], -1, time_source_expire_after);

time_source_start(time_source);