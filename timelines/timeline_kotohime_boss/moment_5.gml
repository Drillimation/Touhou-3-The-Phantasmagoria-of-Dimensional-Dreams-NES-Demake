if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1,315,spr_enemy_bullet,0,-24,-16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,225,spr_enemy_bullet,0,24,-16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,135,spr_enemy_bullet,0,24,16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,45,spr_enemy_bullet,0,-24,16,false,snd_enemy_fire);
	lm_ammo -= 1;
}