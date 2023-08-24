if lm_ammo >= 1 {
	scr_shoot_bullet_enemy(1.5,245 + (lm_ammo * 5),spr_bullet_pellet,0,0,32,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,155 + (lm_ammo * 5),spr_bullet_pellet,0,-32,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,65 + (lm_ammo * 5),spr_bullet_pellet,0,0,-32,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5,-25 + (lm_ammo * 5),spr_bullet_pellet,0,32,0,false,snd_enemy_fire);
	lm_ammo -= 1;
}