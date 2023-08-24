/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_sprite(spr_portraits,global.character[0],8,32);
draw_set_font(global.language);
draw_set_color(make_color_rgb(0,0,0));
draw_text(80+1,56+1,player[0]);
draw_set_color(make_color_rgb(252,252,252));
draw_text(80,56,player[0]);
if global.onlinemode == false {
	draw_sprite(spr_portraits,global.character[1],184,144);
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(8+1,168+1,player[1]);
	draw_set_color(make_color_rgb(252,252,252));
	draw_text(8,168,player[1]);
}
else {
	draw_set_font(global.font);
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(48+1,168+1,"WAITING FOR PLAYERS");
	draw_set_color(make_color_rgb(252,252,252));
	draw_text(48,168,"WAITING FOR PLAYERS");
}

/* for (var i = 0; i < 8; i += 1) {
	draw_text(248,8 + (i * 8),global.opponent[i]);
}
*/