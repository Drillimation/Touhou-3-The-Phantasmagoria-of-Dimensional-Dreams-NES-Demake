if lm_ammo >= 1 {
	for(var i = 0; i < 16; i += 1) {
		scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),22.5 * i,spr_bullet_pellet,0,lm_ammo * 16,y,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}