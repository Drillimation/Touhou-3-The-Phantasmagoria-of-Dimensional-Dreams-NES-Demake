if lm_ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5,i * 25,spr_bullet_pellet,1,0,0,true,snd_enemy_fire);
	}
	lm_ammo -= 1;
}