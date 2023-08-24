/// @description Insert description here
// You can write your code in this editor
if global.playeractive[0] == true and global.playeractive[1] == false {
	if global.freeplaymode == false {
		if obj_character_select_p1.ready == true {
			room_goto_next();
		}
	}
	else {
		if global.onlinemode == false {
			if obj_character_select_p1.ready == true and obj_character_select_cpu.ready == true {
				room_goto_next();
			}
		}
		else {
			if obj_character_select_p1.ready == true {
				if global.onlinemode == true {
					room_goto(room_online_menu);
				}
			}
		}
	}
}
if global.playeractive[0] == true and global.playeractive[1] == true {
	if obj_character_select_p1.ready == true and obj_character_select_p2.ready == true {
		room_goto_next();
	}
}