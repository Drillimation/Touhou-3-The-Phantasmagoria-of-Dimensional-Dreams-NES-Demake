/// @description Insert description here
// You can write your code in this editor
if global.onlinemode == false {
	if keyboard_check_pressed(vk_anykey) or gamepad_button_check(0,gp_start) {
		audio_play_sound(snd_menuconfirm,10,false);
		room_goto(room_play_field);
	}
}
else {
	if ds_list_size(obj_drillimation_online_client.clients) == 2 {
		room_goto(room_play_field);
	}
}