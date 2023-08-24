with(obj_bullet_player) {
	if sprite_index == spr_kagami_bullet {
		for (var i = 0; i < 4; i += 1) {
			var inst = instance_create_depth(x,y,0,obj_bullet_player);
			inst.player_id = self.player_id;
			inst.sprite_index = spr_kagami_bullet_2;
			inst.direction = 45 + (i * 90);
		}
		instance_destroy();
	}
}
timeline_running = false;