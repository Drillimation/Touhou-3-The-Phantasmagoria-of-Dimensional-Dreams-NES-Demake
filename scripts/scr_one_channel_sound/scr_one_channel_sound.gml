function scr_one_channel_sound(_sound){
	if audio_is_playing(_sound) {
		audio_stop_sound(_sound)
		audio_play_sound(_sound,10,false);
	}
	else {
		audio_play_sound(_sound,10,false);
	}
}