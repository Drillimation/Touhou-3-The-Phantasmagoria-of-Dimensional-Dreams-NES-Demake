/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left);
draw_set_font(global.font);
draw_set_color(make_color_rgb(248,248,248));
draw_text(8,232,ds_list_size(clients));
draw_set_color(make_color_rgb(248,56,0));
draw_rectangle(0,232,7,239,false);
