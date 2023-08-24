for(var j = 0; j < 4; j += 1) {	
	for(var i = 0; i < 16; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (j * 0.125),(i * 22.5),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
	}
}