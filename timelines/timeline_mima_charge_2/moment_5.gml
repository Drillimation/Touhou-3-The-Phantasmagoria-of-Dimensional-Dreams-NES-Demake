if lm_ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),(20 * i) - ((lm_ammo * 30) - 30),spr_enemy_bullet,0,-48,y,false,snd_enemy_fire);
	}
	for(var i = 0; i < 16; i += 1) {
		scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),22.5 * i,spr_enemy_bullet,0,-48,y,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}