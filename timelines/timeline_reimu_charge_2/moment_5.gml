if lm_ammo >= 1 {
	for(var i = -2; i < 3; i += 1) {
		scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),20 * i,spr_enemy_bullet,0,lm_ammo * 16,y,true,snd_enemy_fire);
	}
}