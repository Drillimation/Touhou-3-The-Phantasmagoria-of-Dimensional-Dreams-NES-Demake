if lm_ammo >= 1 {
	for(var i = 0; i < 8; i += 1) {
		scr_shoot_bullet_enemy((1.5 - (i * 0.1)) + (global.spell[player_id] * 0.05),0,spr_enemy_bullet,0,-48,0,true,snd_enemy_fire);
		scr_shoot_bullet_enemy((1.5 - (i * 0.1)) + (global.spell[player_id] * 0.05),0,spr_enemy_bullet,0,48,0,true,snd_enemy_fire);
	}
	lm_ammo -= 1;
}