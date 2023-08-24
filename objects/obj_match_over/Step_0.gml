/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("Z")) or keyboard_check(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	if global.freeplaymode == true {
		instance_create_depth(32,128,0,obj_results_options);
		instance_destroy();
	}
	else {
		if global.wins[1] == 2 {
			instance_create_depth(32,128,0,obj_continue);
		}
		else {
			scr_new_game("CONTINUE");
		}
	}
}