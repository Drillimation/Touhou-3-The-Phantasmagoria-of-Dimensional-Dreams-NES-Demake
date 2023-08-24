for(var i = -2; i < 3; i += 1) {
	scr_shoot_bullet_enemy(1,i * 20,spr_bullet_pellet,0,-24,-16,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,i * 20,spr_bullet_pellet,0,24,-16,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,i * 20,spr_bullet_pellet,0,24,16,true,snd_enemy_fire);
	scr_shoot_bullet_enemy(1,i * 20,spr_bullet_pellet,0,-24,16,true,snd_enemy_fire);
}