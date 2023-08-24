for(var i = 0; i < 16; i += 1) {
	for(var j = 0; j < 2; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.5 * j),22.5 * i,spr_bullet_pellet,6,lm_ammo * 16,0,false,snd_enemy_fire)
	}
}
for(var i = 0; i < 12; i += 1) {
	scr_shoot_bullet_enemy(1 - (0.01 * i),230 + (5 * i),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	scr_shoot_bullet_enemy(1 - (0.01 * i),310 - (5 * i),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
}