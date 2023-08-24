randomize();
for(var i = 0; i < 32; i += 1) {
	scr_shoot_bullet_enemy(random_range(1,1.5),irandom_range(0,360),spr_bullet_shard,choose(0,3),0,0,false,snd_enemy_fire);
}