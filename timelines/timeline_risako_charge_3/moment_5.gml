if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),30,spr_bullet_pellet,6,48,y,true,snd_enemy_fire)
	scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),-30,spr_bullet_pellet,6,48,y,true,snd_enemy_fire)
	scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),30,spr_bullet_pellet,6,-48,y,true,snd_enemy_fire)
	scr_shoot_bullet_enemy(1.5 + (global.spell[player_id] * 0.05),-30,spr_bullet_pellet,6,-48,y,true,snd_enemy_fire)
	lm_ammo -= 1;
}