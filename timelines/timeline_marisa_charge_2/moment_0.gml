//if x > 136 and x < 248 { target = obj_player_1 }
//if x > 8 and x < 120 { if global.playeractive[1] == true { /*target = obj_player_2*/ } else { target = obj_player_cpu } }	
randomize();
scr_shoot_bullet_enemy(0,270,spr_marisa_bullet_2,0,irandom_range(-48,48),-16,false,snd_enemy_fire);
with(obj_bullet_enemy) {
	if sprite_index == spr_marisa_bullet_2 {
		image_xscale = 10;
	}
}