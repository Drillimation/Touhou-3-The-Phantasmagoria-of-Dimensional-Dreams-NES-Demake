for(var i = 0; i < 10; i += 1) {
	scr_shoot_bullet_enemy(1.5 - (0.05 * i),315 - (5 * i),spr_enemy_bullet,0,0,16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (0.05 * i),225 + (5 * i),spr_enemy_bullet,0,0,16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (0.05 * i),135 - (5 * i),spr_enemy_bullet,0,0,-16,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1.5 - (0.05 * i),45 + (5 * i),spr_enemy_bullet,0,0,-16,false,snd_enemy_fire);
}