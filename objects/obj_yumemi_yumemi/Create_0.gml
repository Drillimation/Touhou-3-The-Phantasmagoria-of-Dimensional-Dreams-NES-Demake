/// @description Insert description here
// You can write your code in this editor
scr_region();
stage = "yumemi_yumemi"
file = string(stage) + string(global.suf) + ".ini";
ini_open(file);
for (var i = 0; i < 8; i += 1) {
	scr_cutscene(i,spr_chiyuri_10);
}
scr_cutscene(8,spr_chiyuri_11);
scr_cutscene(9,spr_chiyuri_11);
scr_cutscene(10,spr_chiyuri_11);
ini_close();

text_current = 0;
text_last = 10;
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