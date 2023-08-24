if lm_ammo >= 1 {
	for(var i = 0; i < 12; i += 1) {
		scr_shoot_bullet_enemy(2 - (lm_ammo * 0.1),(30 * i) - (lm_ammo * 5),spr_bullet_pellet,0,0,0,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}