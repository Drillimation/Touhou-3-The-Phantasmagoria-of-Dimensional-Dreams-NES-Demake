/// @description Insert description here
// You can write your code in this editor
if hp <= 0 {
	scr_one_channel_sound(snd_hit);
	instance_create_depth(x,y,0,obj_explosion);
	instance_destroy();
}