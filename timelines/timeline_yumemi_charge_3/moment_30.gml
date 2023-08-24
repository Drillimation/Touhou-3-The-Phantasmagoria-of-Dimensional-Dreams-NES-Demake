for(var i = 0; i < 16; i += 1) {
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),22.5 * i,spr_bullet_pellet,3,32,16,false,snd_enemy_fire)
}