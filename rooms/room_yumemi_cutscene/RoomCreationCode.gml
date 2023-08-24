audio_stop_sound(global.song);
global.song = audio_play_sound(snd_inter_02,10,true);
switch(global.character[0]) {
	case 0: instance_create_depth(0,0,0,obj_reimu_yumemi); break;
	case 1: instance_create_depth(0,0,0,obj_marisa_yumemi); break;
	case 2: instance_create_depth(0,0,0,obj_mima_yumemi); break;
	case 3: instance_create_depth(0,0,0,obj_ellen_yumemi); break;
	case 4: instance_create_depth(0,0,0,obj_kotohime_yumemi); break;
	case 5: instance_create_depth(0,0,0,obj_kana_yumemi); break;
	case 6: instance_create_depth(0,0,0,obj_risako_yumemi); break;
	case 7: instance_create_depth(0,0,0,obj_kagami_yumemi); break;
	case 8: instance_create_depth(0,0,0,obj_chiyuri_yumemi); break;
	case 9: instance_create_depth(0,0,0,obj_yumemi_yumemi); break;
}