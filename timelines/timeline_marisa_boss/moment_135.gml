if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(0,270,spr_marisa_bullet_2,0,(16 * lm_ammo),0,false,snd_enemy_fire)
	scr_shoot_bullet_enemy(0,270,spr_marisa_bullet_2,0,-(16 * lm_ammo),0,false,snd_enemy_fire)
	with(obj_bullet_enemy) {
		if sprite_index == spr_marisa_bullet_2 {
			y = 0;
			image_xscale = 10;
		}
	}
	lm_ammo -= 1;
}