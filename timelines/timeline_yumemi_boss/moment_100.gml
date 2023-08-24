randomize();
if lm_ammo >= 1 {
	for(var i = 0; i < 32; i += 1) {
		scr_shoot_bullet_enemy(random_range(0.5,1),irandom_range(0,360),spr_bullet_pellet,0,0,0,false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}