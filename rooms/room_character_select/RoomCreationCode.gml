audio_stop_sound(global.song);
global.song = audio_play_sound(snd_selection,10,true);

if global.playeractive[0] == true {
	instance_create_depth(112,80,0,obj_character_select_p1);
}
if global.playeractive[1] == true {
	instance_create_depth(128,80,0,obj_character_select_p2);
}