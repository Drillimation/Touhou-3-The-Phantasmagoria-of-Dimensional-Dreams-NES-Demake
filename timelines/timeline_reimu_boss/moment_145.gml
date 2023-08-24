if lm_ammo >= 1 {
	for(var i = 0; i < 16; i += 1) {
		scr_shoot_bullet_enemy(1.5,22.5 * i,spr_enemy_bullet,0,0,lm_ammo * 16,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}