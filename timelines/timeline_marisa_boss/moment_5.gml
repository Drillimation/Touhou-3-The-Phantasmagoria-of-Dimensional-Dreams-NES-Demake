if lm_ammo >= 1 {
	for(var i = 0; i < 2; i += 1) {
		scr_shoot_bullet_enemy(1.5 - (0.5 * i),180 + (lm_ammo * 10),spr_bullet_shard,4,0,0,false,snd_enemy_fire)
		scr_shoot_bullet_enemy(1.5 - (0.5 * i),360 - (lm_ammo * 10),spr_bullet_shard,4,0,0,false,snd_enemy_fire)
	}
	lm_ammo -= 1;
}