if lm_ammo >= 1 {
	for(var i = 0; i < 2; i += 1) {
		scr_shoot_bullet_enemy(2 - (i * 0.5),lm_ammo * 10,spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}