/// @description Insert description here
// You can write your code in this editor
if ready == false {
	scr_menu_input();

	if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
		if global.onlinemode == false {
			global.character[0] = menu_index_y;
			if global.freeplaymode == true and global.playeractive[1] == false {
				instance_create_depth(128,80,0,obj_character_select_cpu);
			}
		}
		else {
			global.character[0] = menu_index_y;
			global.character[1] = menu_index_y;
		}
		ready = true;
	}

	if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_escape) or gamepad_button_check(0,gp_face2) {
		audio_stop_sound(global.song);
		room_goto(room_title);
	}
}
else {
	if keyboard_check_pressed(ord("X")) or keyboard_check_pressed(vk_escape) or gamepad_button_check(0,gp_face2) {
		ready = false;
	}
}