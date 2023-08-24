/// @description Insert description here
// You can write your code in this editor
scr_menu_input();

if keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1) {
	switch(menu_index_y) {
		case 0:
			audio_play_sound(snd_menuconfirm,1,false);
			//scr_new_game("ONLINE")
			global.online_id = 0;
			obj_drillimation_online_client.server = network_create_server(network_socket_tcp, server_port, 2);
			if (obj_drillimation_online_client.server < 0) {
				show_debug_message("Failed to create server");
			}
			else {
				obj_drillimation_online_client.is_server = true;
				room_goto(room_get_ready);
			}
			
			break;
		case 1:
			audio_play_sound(snd_menuconfirm,1,false);
			//scr_new_game("ONLINE")
			global.online_id = 1;
			obj_drillimation_online_client.server = network_create_socket(network_socket_tcp);
			var res = network_connect(obj_drillimation_online_client.server,server_ip,server_port);
			if (res < 0) {
				show_debug_message("Failed to join the server")
			}
			else {
				room_goto(room_get_ready);
			}
			break;
		case 2:
			audio_play_sound(snd_menuconfirm,1,false);
			room_goto(room_title);
			break;
	}
}

if keyboard_check_pressed(ord("R")) {
	game_restart();
}