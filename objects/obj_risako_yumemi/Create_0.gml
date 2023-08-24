/// @description Insert description here
// You can write your code in this editor
scr_region();
stage = "risako_yumemi"
file = string(stage) + string(global.suf) + ".ini";
ini_open(file);
for (var i = 0; i < 17; i += 1) {
	scr_cutscene(i,spr_chiyuri_10);
}
scr_cutscene(17,spr_chiyuri_11);
scr_cutscene(18,spr_chiyuri_11);
scr_cutscene(19,spr_whack);
scr_cutscene(20,spr_chiyuri_10);
scr_cutscene(21,spr_chiyuri_10);
scr_cutscene(22,spr_chiyuri_10);
scr_cutscene(23,spr_chiyuri_10);
ini_close();

text_current = 0;
text_last = 23;
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