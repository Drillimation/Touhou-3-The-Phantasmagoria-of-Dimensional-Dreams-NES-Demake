if lm_ammo >= 1 {
	for (var i = 0; i < 8; i += 1) {
		var inst = instance_create_depth(x,y,0,obj_bullet_player);
		inst.player_id = self.player_id;
		inst.image_index = global.character[player_id];
		inst.direction = 55 + (i * 10);
	}
	lm_ammo -= 1;
}