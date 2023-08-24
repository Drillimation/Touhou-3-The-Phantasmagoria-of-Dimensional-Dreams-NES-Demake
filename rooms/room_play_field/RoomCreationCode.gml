if !audio_is_playing(global.song) {
	if global.stage == 8 {
		global.song = audio_play_sound(snd_decisive_theme,10,true);
	}
	else {
		switch(global.character[1]) {
			case 0:
				global.song = audio_play_sound(snd_reimu_theme,10,true);
				break;
			case 1:
				global.song = audio_play_sound(snd_marisa_theme,10,true);
				break;
			case 2:
				global.song = audio_play_sound(snd_mima_theme,10,true);
				break;
			case 3:
				global.song = audio_play_sound(snd_ellen_theme,10,true);
				break;
			case 4:
				global.song = audio_play_sound(snd_kotohime_theme,10,true);
				break;
			case 5:
				global.song = audio_play_sound(snd_kana_theme,10,true);
				break;
			case 6:
				global.song = audio_play_sound(snd_risako_theme,10,true);
				break;
			case 7:
				global.song = audio_play_sound(snd_kagami_theme,10,true);
				break;
			case 8:
				global.song = audio_play_sound(snd_chiyuri_theme,10,true);
				break;
			case 9:
				global.song = audio_play_sound(snd_yumemi_theme,10,true);
				break;
		}
	}
}
if global.onlinemode == false {
	if global.playeractive[1] == true {
		instance_create_depth(192,200,0,obj_player_2);
	}
	else {
		instance_create_depth(192,200,0,obj_player_cpu);
	}
}
else {
	//instance_create_depth(64 + (global.online_id * 128),200,0,obj_player_online);
}