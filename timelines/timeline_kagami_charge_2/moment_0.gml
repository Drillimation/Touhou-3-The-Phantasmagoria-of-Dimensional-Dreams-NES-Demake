randomize();
for(var i = 0; i < 32; i += 1) {
	scr_shoot_bullet_enemy(random_range(0.75,1.5) + (global.spell[player_id] * 0.05),irandom_range(225,315),spr_enemy_bullet,0,0,0,false,snd_enemy_fire);
}