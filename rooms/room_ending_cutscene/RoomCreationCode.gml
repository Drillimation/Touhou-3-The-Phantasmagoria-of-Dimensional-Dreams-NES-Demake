audio_stop_sound(global.song);
switch(global.character[0]) {
	case 0: global.song = audio_play_sound(snd_daytime_ending,10,true); break;
	case 1: global.song = audio_play_sound(snd_daytime_ending,10,true); break;
	case 2: global.song = audio_play_sound(snd_nighttime_ending,10,true); break;
	case 3: global.song = audio_play_sound(snd_normal_ending,10,true); break;
	case 4: global.song = audio_play_sound(snd_normal_ending,10,true); break;
	case 5: global.song = audio_play_sound(snd_nighttime_ending,10,true); break;
	case 6: global.song = audio_play_sound(snd_normal_ending,10,true); break;
	case 7: global.song = audio_play_sound(snd_daytime_ending,10,true); break;
	case 8: global.song = audio_play_sound(snd_normal_ending,10,true); break;
	case 9: global.song = audio_play_sound(snd_normal_ending,10,true); break;
}