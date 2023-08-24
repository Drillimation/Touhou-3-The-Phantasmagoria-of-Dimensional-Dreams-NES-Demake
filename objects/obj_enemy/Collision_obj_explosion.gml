/// @description Insert description here
// You can write your code in this editor
scr_one_channel_sound(snd_hit);
instance_create_depth(x,y,0,obj_explosion);

if x < 128 {
	global.combo[0] += 1;
	global.playerscore[0] += global.combo[0] * 10;
	global.spell_max[0] += 32;
}
else {
	global.combo[1] += 1;
	global.playerscore[1] += global.combo[1] * 10;
	global.spell_max[1] += 32;
}

instance_destroy();