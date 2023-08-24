if lm_ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5,(20 * i) - ((lm_ammo * 30) - 30),spr_bullet_pellet,1,-48,y,false,snd_enemy_fire);
	}
	for(var i = 0; i < 16; i += 1) {
		scr_shoot_bullet_enemy(1.5,22.5 * i,spr_bullet_pellet,1,-48,y,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}