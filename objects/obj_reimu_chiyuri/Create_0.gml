/// @description Insert description here
// You can write your code in this editor
scr_region();
stage = "reimu_chiyuri"
file = string(stage) + string(global.suf) + ".ini";
ini_open(file);
scr_cutscene(0,spr_chiyuri_06);
scr_cutscene(1,spr_chiyuri_06);
scr_cutscene(2,spr_chiyuri_06);
scr_cutscene(3,spr_chiyuri_06);
scr_cutscene(4,spr_chiyuri_06);
scr_cutscene(5,spr_chiyuri_06);
scr_cutscene(6,spr_chiyuri_07);
scr_cutscene(7,spr_chiyuri_07);
scr_cutscene(8,spr_chiyuri_07);
scr_cutscene(9,spr_chiyuri_07);
scr_cutscene(10,spr_chiyuri_07);
scr_cutscene(11,spr_chiyuri_07);
scr_cutscene(12,spr_whack);
scr_cutscene(13,spr_chiyuri_10);
scr_cutscene(14,spr_chiyuri_10);
scr_cutscene(15,spr_whack);
for (var i = 16; i < 51; i += 1) {
	scr_cutscene(i,spr_chiyuri_08);
}
scr_cutscene(51,spr_whack);
scr_cutscene(52,spr_chiyuri_10);
scr_cutscene(53,spr_chiyuri_10);
scr_cutscene(54,spr_chiyuri_10);
scr_cutscene(55,spr_chiyuri_10);
ini_close();

text_current = 0;
text_last = 55;
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