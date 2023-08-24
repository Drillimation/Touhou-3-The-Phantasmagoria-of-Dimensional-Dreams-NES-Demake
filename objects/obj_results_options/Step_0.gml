/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false);
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.spellgauge[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			room_goto(room_get_ready);
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false);
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.spellgauge[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			room_goto(room_character_select);
			break;
		case 2:
			audio_play_sound(snd_menuconfirm,1,false);
			room_goto(room_title);
			break;
	}
}