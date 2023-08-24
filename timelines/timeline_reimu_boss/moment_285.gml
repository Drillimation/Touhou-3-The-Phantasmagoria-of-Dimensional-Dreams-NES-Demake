if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1,0 + (lm_ammo * 10),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,180 + (lm_ammo * 10),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	lm_ammo -= 1;
}