if lm_ammo >= 1 {
	for(var i = 0; i < 8; i += 1) {
		scr_shoot_bullet_enemy(1.25,(i * 45) + (lm_ammo * 5),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}