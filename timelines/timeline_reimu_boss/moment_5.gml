if lm_ammo >= 1 {
	for(var i = 0; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5,235 - (i * 10),spr_bullet_pellet,0,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.5,305 + (i * 10),spr_bullet_pellet,0,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}