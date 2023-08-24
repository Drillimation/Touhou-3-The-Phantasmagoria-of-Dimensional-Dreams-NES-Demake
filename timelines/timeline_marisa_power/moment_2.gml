if lm_ammo >= 1 {
	timeline_position = 1;
}
else {
	with(obj_bullet_player) {
		if sprite_index == spr_marisa_bullet {
			instance_destroy();
		}
	}
	timeline_running = false;
}