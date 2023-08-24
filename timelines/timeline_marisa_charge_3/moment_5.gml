if lm_ammo >= 1 {
	for (var i = 0; i < 5; i += 1) {
		scr_shoot_bullet_enemy((1.5 - (i * 0.1)) + (global.spell[player_id] * 0.05),315,spr_bullet_shard,4,-48,(lm_ammo * 16),false,snd_enemy_fire);
		scr_shoot_bullet_enemy((1.5 - (i * 0.1)) + (global.spell[player_id] * 0.05),225,spr_bullet_shard,4,48,(lm_ammo * 16),false,snd_enemy_fire);
	}
	lm_ammo -= 1;
}