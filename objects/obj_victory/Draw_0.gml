/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(global.font);
draw_set_color(make_color_rgb(252,252,252));
draw_set_halign(fa_left);
draw_text(x,y + 48,"TIME BONUS");
draw_text(x,y + 64,"HEALTH BONUS");
draw_text(x,y + 80,"SPELL LEVEL");
draw_text(x,y + 96,"BOSS LEVEL");
draw_text(x,y + 112,"TOTAL");
draw_set_halign(fa_right);
draw_text(x + 112,y + 56,bonus_1);
draw_text(x + 112,y + 72,bonus_2);
draw_text(x + 112,y + 88,bonus_3);
draw_text(x + 112,y + 104,bonus_4);
draw_text(x + 112,y + 120,total);