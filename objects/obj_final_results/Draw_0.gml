/// @description Insert description here
// You can write your code in this editor
fnt = font_add_sprite(spr_font,32,false,0);
draw_set_font(fnt);
draw_set_color(make_color_rgb(248,248,248))
draw_set_halign(fa_center);
draw_text(128,16,"FINAL RESULTS");
draw_set_halign(fa_left);
draw_text(8,24,"FINAL SCORE");
draw_text(8,40,"CONTINUES USED");
draw_text(8,56,"SPELL ATTACKS UNLEASHED");
draw_text(8,72,"BOSS ATTACKS UNLEASHED");
draw_set_halign(fa_right);
draw_text(248,32,global.playerscore[0]);
draw_text(248,48,global.continuesused);
draw_text(248,64,global.spellsused);
draw_text(248,80,global.bossesused);