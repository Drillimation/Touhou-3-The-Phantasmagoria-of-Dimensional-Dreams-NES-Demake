/// @description Insert description here
// You can write your code in this editor
if hp <= 0 {
	scr_one_channel_sound(snd_hit);
	instance_create_depth(x,y,0,obj_explosion);
	instance_destroy();
}
else {
	image_index = hp - 1;
}
if enemy_id == 0 {
	if x < 8 or x > 120 {
	instance_destroy();
	}
}
if enemy_id == 1 {
	if x < 136 or x > 248 {
		instance_destroy();
	}
}