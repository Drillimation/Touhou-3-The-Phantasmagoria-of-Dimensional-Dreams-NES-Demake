/// @description Insert description here
// You can write your code in this editor
if i >= 1 {
	draw_set_font(global.language);
	draw_set_color(make_color_rgb(252,252,252));
	draw_set_halign(fa_left);
	draw_sprite(spr_portraits,global.character[winner],96,96);
	draw_text(0,168,text[0]);
}
if i >= 2 {
	draw_set_font(global.font);
	draw_text(24,208,ad_text);
}