if lm_ammo >= 1 {
	for(var i = 0; i < 24; i += 1) {
		scr_shoot_bullet_enemy(2,15 * i,spr_bullet_pellet,1,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}