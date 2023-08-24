if lm_ammo >= 1 {
	for(var i = 0; i < 5; i += 1) {
		scr_shoot_bullet_enemy(1.5,(72 * i) + (50 + (lm_ammo * 5)),spr_bullet_pellet,6,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}