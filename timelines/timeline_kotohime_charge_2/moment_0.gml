_dy = irandom_range(0,100)
_dx = irandom_range(-48,48)

for(var i = 0; i < 10; i += 1) {
	scr_shoot_bullet_enemy(1 + (global.spell[player_id] * 0.05),36 * i,spr_enemy_bullet,0,_dx,_dy,false,snd_enemy_fire);
}