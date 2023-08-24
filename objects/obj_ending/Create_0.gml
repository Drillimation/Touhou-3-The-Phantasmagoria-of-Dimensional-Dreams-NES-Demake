/// @description Insert description here
// You can write your code in this editor
scr_region();
stage = "endings"
file = string(stage) + string(global.suf) + ".ini";
ini_open(file);
scr_cutscene_ending(0,spr_chiyuri_12);
for (var i = 1; i < 4; i += 1) {
	switch(global.character[0]) {
		case 0: scr_cutscene_ending(i,spr_reimu_ending); break;
		case 1: scr_cutscene_ending(i,spr_marisa_ending); break;
		case 2: scr_cutscene_ending(i,spr_mima_ending); break;
		case 3: scr_cutscene_ending(i,spr_ellen_ending); break;
		case 4: scr_cutscene_ending(i,spr_kotohime_ending); break;
		case 5: scr_cutscene_ending(i,spr_kana_ending); break;
		case 6: scr_cutscene_ending(i,spr_risako_ending); break;
		case 7: scr_cutscene_ending(i,spr_kagami_ending); break;
		case 8: scr_cutscene_ending(i,spr_chiyuri_ending); break;
		case 9: scr_cutscene_ending(i,spr_yumemi_ending); break;
	}
}
ini_close();

text_current = 0;
text_last = 3;
text_width = 256;
text_x = 0;
text_y = 192;

char_current = 1;
char_speed = 0.25;
reveal = 0;
alarm[1] = char_speed * 12;
name_reveal = false;

//destroy_action = false;
//destroy_script = scr_do_nothing;

text[text_current] = scr_string_wrap(text[text_current], text_width);