if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1.5,295 - (lm_ammo * 5),spr_bullet_pellet,0,0,32,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,205 - (lm_ammo * 5),spr_bullet_pellet,0,-32,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,115 - (lm_ammo * 5),spr_bullet_pellet,0,0,-32,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,25 - (lm_ammo * 5),spr_bullet_pellet,0,32,0,false,snd_enemy_fire);
	lm_ammo -= 1;
}