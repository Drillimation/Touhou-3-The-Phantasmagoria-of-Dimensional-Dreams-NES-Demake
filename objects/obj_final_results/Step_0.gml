/// @description Insert description here
// You can write your code in this editor
if gamepad_button_check_pressed(0,gp_face1) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) {
	room_goto_next();
}