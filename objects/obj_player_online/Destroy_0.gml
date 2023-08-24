/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_explosion,10,false);
instance_create_depth(8 + (global.online_id * 128),24,0,obj_bomb_mini);
instance_create_depth(136 - (global.online_id * 128),24,0,obj_bomb_mini);
instance_create_depth(8 + (global.online_id * 128),24,0,obj_defeat);
instance_create_depth(136 - (global.online_id * 128),24,0,obj_victory);