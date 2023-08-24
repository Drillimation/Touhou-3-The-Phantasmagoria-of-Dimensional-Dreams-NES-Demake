if lm_ammo >= 1 {
	for (var i = 0; i < 2; i += 1) {
		var inst = instance_create_depth(x,y,0,obj_bullet_player);
		inst.player_id = self.player_id;
		inst.sprite_index = spr_kagami_bullet;
		inst.direction = 75 + (i * 30);
	}
	lm_ammo -= 1;
}