randomize();
if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),270,spr_bullet_pellet,6,irandom_range(-48,48),y,false,snd_enemy_fire)
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),270,spr_bullet_pellet,6,irandom_range(-48,48),y,false,snd_enemy_fire)
	lm_ammo -= 1;
}