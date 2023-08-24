for (var i = 0; i < 4; i += 1) {
	var inst = instance_create_depth(x,y,0,obj_bullet_player);
	inst.player_id = self.player_id;
	inst.sprite_index = spr_risako_bullet;
	inst.direction = 45 + (i * 90);
	inst.speed = 1;
}
dir = 0;