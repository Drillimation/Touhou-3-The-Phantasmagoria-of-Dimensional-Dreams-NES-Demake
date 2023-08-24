for(var i = -1; i < 2; i += 1) {
	for(var j = 0; j < 5; j += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.125),i * 20,spr_bullet_pellet,4,0,0,true,snd_enemy_fire);
	}
}