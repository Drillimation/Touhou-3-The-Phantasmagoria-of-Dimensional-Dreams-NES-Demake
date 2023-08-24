/// @description Insert description here
// You can write your code in this editor
if layer_sequence_is_finished(_sequence) != 0 {
	layer_sequence_destroy(_sequence);
	global.song = audio_play_sound(snd_inter_01b,10,true);
	switch(global.character[0]) {
		case 0: instance_create_depth(0,0,0,obj_reimu_chiyuri); break;
		case 1: instance_create_depth(0,0,0,obj_marisa_chiyuri); break;
		case 2: instance_create_depth(0,0,0,obj_mima_chiyuri); break;
		case 3: instance_create_depth(0,0,0,obj_ellen_chiyuri); break;
		case 4: instance_create_depth(0,0,0,obj_kotohime_chiyuri); break;
		case 5: instance_create_depth(0,0,0,obj_kana_chiyuri); break;
		case 6: instance_create_depth(0,0,0,obj_risako_chiyuri); break;
		case 7: instance_create_depth(0,0,0,obj_kagami_chiyuri); break;
		case 8: instance_create_depth(0,0,0,obj_chiyuri_chiyuri); break;
		case 9: instance_create_depth(0,0,0,obj_yumemi_chiyuri); break;
	}
	instance_destroy();
}