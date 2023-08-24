if lm_ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5,i * 20,spr_enemy_bullet,0,0,0,true,snd_enemy_fire);
		scr_shoot_bullet_enemy(1.5,180 + (i * 20),spr_enemy_bullet,0,0,0,true,snd_enemy_fire);
	}
	lm_ammo -= 1;
}