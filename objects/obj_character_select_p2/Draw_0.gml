/// @description Insert description here
// You can write your code in this editor
if ready == false {
	var i = 0;
	repeat (buttons_y) 
	{
	font = font_add_sprite(spr_font,32,false,0);
	draw_set_font(font);
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(0,0,0));
	draw_text(128+1, y+1 + (button_h * i), button[i]);
	draw_set_color(make_color_rgb(252,252,252));
	//if (menu_index_y == i) draw_set_color(make_color_rgb(246,56,0));
	draw_text(128, y + (button_h * i), button[i]);
	i++;
	}
	draw_sprite(spr_cursor_p2,0,160,y + (button_h * menu_index_y));
	draw_sprite(spr_portraits,menu_index_y,184,88)
	draw_sprite(spr_stats,menu_index_y,168,160)

	draw_set_font(global.language);
	draw_set_halign(fa_left);
	draw_text(0,216,text[global.reg_no]);
}
else {
	font = font_add_sprite(spr_font,32,false,0);
	draw_set_font(font);
	draw_set_halign(fa_center);
	draw_set_color(make_color_rgb(0,184,0));
	draw_text(224,88,"READY!");
}