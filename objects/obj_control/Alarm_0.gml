/// @description Insert description here
// You can write your code in this editor
global.time -= 1;
if global.time >= 1 and stopped == false {
	alarm[0] = 60;
}
if global.time == 0 {
	audio_play_sound(snd_timeup,10,false);
	instance_create_depth(128,120,-1000,obj_timeup);
}