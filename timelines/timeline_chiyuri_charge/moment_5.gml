if lm_ammo >= 1 {
	randomize();
	var inst = instance_create_depth(x,y,0,obj_bullet_player);
	inst.player_id = self.player_id;
	inst.sprite_index = spr_chiyuri_bullet;
	inst.direction = 90;
	lm_ammo -= 1;
}