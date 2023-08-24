if lm_ammo >= 1 {
	randomize();
	var inst = instance_create_depth(x + irandom_range(-16,16),y + irandom_range(-16,16),0,obj_bullet_player);
	inst.player_id = self.player_id;
	inst.sprite_index = spr_ellen_bullet;
	if instance_exists(obj_enemy) {
		inst.target = instance_nearest(x,y,obj_enemy);
		inst.direction = point_direction(x,y,inst.target.x,inst.target.y);
	}
	lm_ammo -= 1;
}