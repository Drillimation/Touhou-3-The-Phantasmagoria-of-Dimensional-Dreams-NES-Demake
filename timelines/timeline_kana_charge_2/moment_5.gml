randomize();
if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),270,spr_enemy_bullet,0,irandom_range(-48,48),y,false,snd_enemy_fire)
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),270,spr_enemy_bullet,0,irandom_range(-48,48),y,false,snd_enemy_fire)
	lm_ammo -= 1;
}