// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gui(){
	draw_sprite(spr_gui_below,0,0,0);
	draw_set_color(make_color_rgb(252,252,252));
	draw_set_font(global.font);
	draw_set_halign(fa_right);
	draw_text(56,8,global.playerscore[0]);
	draw_text(256,8,global.playerscore[1]);
	draw_text(152,8,global.highscore);
	draw_text(40,16,global.bombs[0]);
	draw_text(248,16,global.bombs[1]);
	draw_text(136,16,global.time);
	draw_text(256,232,string(global.stage) + "-" + string(global.rnd));
	
	draw_set_color(make_color_rgb(0,184,0));
	draw_text(16,224,global.spell[0]);
	draw_text(144,224,global.spell[1]);
	
	draw_set_color(make_color_rgb(248,56,0));
	draw_text(120,224,global.boss[0]);
	draw_text(248,224,global.boss[1]);
	
	draw_healthbar(40,16,119,23,(global.hp[0]/10) * 100,make_color_rgb(0,0,0),make_color_rgb(252,252,252),make_color_rgb(252,252,252),1,true,false);
	draw_healthbar(136,16,215,23,(global.hp[1]/10) * 100,make_color_rgb(0,0,0),make_color_rgb(252,252,252),make_color_rgb(252,252,252),0,true,false);
	draw_healthbar(16,224,111,231,(global.spell_max[0]/512) * 100,make_color_rgb(0,0,0),make_color_rgb(0,64,88),make_color_rgb(0,64,88),0,true,false);
	draw_healthbar(144,224,239,231,(global.spell_max[1]/512) * 100,make_color_rgb(0,0,0),make_color_rgb(0,64,88),make_color_rgb(0,64,88),0,true,false);
	draw_healthbar(16,224,111,231,(global.spellgauge[0]/512) * 100,make_color_rgb(0,0,0),make_color_rgb(252,252,252),make_color_rgb(252,252,252),0,false,false);
	draw_healthbar(144,224,239,231,(global.spellgauge[1]/512) * 100,make_color_rgb(0,0,0),make_color_rgb(252,252,252),make_color_rgb(252,252,252),0,false,false);
	draw_sprite(spr_gui,0,0,0);
	if instance_exists(obj_timeup) {
		draw_sprite(spr_timeup,0,128,120);
	}
	if global.wins[0] >= 1 {
		draw_sprite(spr_trophy,0,0,16);
	}
	if global.wins[1] >= 1 {
		draw_sprite(spr_trophy,0,248,16);
	}
}