with(obj_bullet_player) {
	if sprite_index == spr_yumemi_bullet {
			var inst = instance_create_depth(x,y,0,obj_bullet_player);
			inst.player_id = self.player_id;
			inst.sprite_index = spr_yumemi_bullet_2;
			inst.direction = 90;
			inst.speed = 0;
		instance_destroy();
	}
}
timeline_running = false;