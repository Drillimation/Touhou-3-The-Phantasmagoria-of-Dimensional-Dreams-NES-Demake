if lm_ammo >= 1 {
	for(var i = -1; i < 2; i += 1) {
		scr_shoot_bullet_enemy(1.25,(lm_ammo * 20) + (15 * i),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.25,180 + (lm_ammo * 20) + (15 * i),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}