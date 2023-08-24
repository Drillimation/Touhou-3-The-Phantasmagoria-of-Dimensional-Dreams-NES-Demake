// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_new_game(_type){
	mode = _type
	//global.highscore = 76500
	switch(mode) {
		case "NEW_FREE":
			//Starting a new game in Free Play Mode
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.spellgauge[i] = 0;
				global.character[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			global.freeplaymode = true;
			global.onlinemode = false;

			global.continuesused = 0;
			global.spellsused = 0;
			global.bossesused = 0;
			
			global.playeractive[0] = true;
			global.playeractive[1] = false;
			break;
		case "NEW_ARCADE":
			//Starting a new game in Arcade Mode
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.spellgauge[i] = 0;
				global.character[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			global.freeplaymode = false;
			global.onlinemode = false;
			
			global.continuesused = 0;
			global.spellsused = 0;
			global.bossesused = 0;
			
			global.playeractive[0] = true;
			global.playeractive[1] = false;
			
			//Create a randomized list of opponents for the first eight matches
			randomize();
			challengers = ds_list_create();
			ds_list_clear(challengers);
			ds_list_add(challengers,0,1,2,3,4,5,6,7);
			ds_list_shuffle(challengers);
			for (var i = 0; i < 8; i += 1) {
				global.opponent[i] = ds_list_find_value(challengers,i)
			}
			global.opponent[8] = 8;
			global.opponent[9] = 9;
			global.character[1] = global.opponent[0]
			ds_list_destroy(challengers);
			break;
		case "CONTINUE":
			//When continuing the story mode, wipe the CPU's data clean
			global.stage += 1;
			if global.stage <= 10 {
				global.character[1] = global.opponent[global.stage - 1]
			}
			global.hp[1] = 10;
			global.playerscore[1] = 0;
			for (var i = 0; i < 2; i += 1) {
			global.bombs[i] = 2;
			global.spell[i] = 1;
			global.boss[i] = 1;
			global.wins[i] = 0;
			global.combo[i] = 0;
			}
				
			global.rnd = 1;
			if global.stage <= 8 {
				room_goto(room_get_ready);
			}
			if global.stage == 9 {
				room_goto(room_chiyuri_cutscene);
			}
			if global.stage == 10 {
				room_goto(room_yumemi_cutscene);
			}
			if global.stage == 11 {
				room_goto(room_ending_cutscene);
			}
			break;
		case "LOCAL":
			//Starting a new game in Two Player Mode
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.character[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			global.freeplaymode = true;
			global.onlinemode = false;
			
			global.continuesused = 0;
			global.spellsused = 0;
			global.bossesused = 0;
			
			global.playeractive[0] = true;
			global.playeractive[1] = true;
			break;
		case "ONLINE":
			//Starting a new game in Two Player Mode
			for (var i = 0; i < 2; i += 1) {
				global.hp[i] = 10;
				global.playerscore[i] = 0;
				global.bombs[i] = 2;
				global.spell[i] = 1;
				global.boss[i] = 1;
				global.wins[i] = 0;
				global.character[i] = 0;
				global.combo[i] = 0;
			}
			global.stage = 1;
			global.rnd = 1;
			global.freeplaymode = true;
			global.onlinemode = true;
			
			global.continuesused = 0;
			global.spellsused = 0;
			global.bossesused = 0;
			
			global.playeractive[0] = true;
			global.playeractive[1] = false;
			break;
	}
}