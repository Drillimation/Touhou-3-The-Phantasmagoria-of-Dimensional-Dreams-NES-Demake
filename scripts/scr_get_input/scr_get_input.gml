function scr_get_input(_player){
	if global.onlinemode == true {
		if (!is_local) exit;
	}
	
	rKey = max(keyboard_check(vk_right),keyboard_check(ord("D")),0)
	lKey = max(keyboard_check(vk_left),keyboard_check(ord("A")),0)
	dKey = max(keyboard_check(vk_down),keyboard_check(ord("S")),0)
	uKey = max(keyboard_check(vk_up),keyboard_check(ord("W")),0)

	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);

	//Gamepad Input
	if (gamepad_is_connected(_player)) {
		rKey = gamepad_button_check(_player, gp_padr) || (gamepad_axis_value(_player,gp_axislh) > 0);
		lKey = gamepad_button_check(_player, gp_padl) || (gamepad_axis_value(_player,gp_axislh) < 0);
		dKey = gamepad_button_check(_player, gp_padd) || (gamepad_axis_value(_player,gp_axislv) > 0);
		uKey = gamepad_button_check(_player, gp_padu) || (gamepad_axis_value(_player,gp_axislv) < 0);
	
		xaxis = (rKey - lKey);
		yaxis = (dKey - uKey);
		
		gamepad_set_axis_deadzone(_player,0.5)
	}
	
	//Online mode buffer input
	if global.onlinemode == true {
		var buffer = buffer_create(16, buffer_fixed, 1);
		buffer_write(buffer,buffer_u8,DATA.PLAYER_UPDATE);
		buffer_write(buffer,buffer_u8,official_id);
		buffer_write(buffer,buffer_s16,x);
		buffer_write(buffer,buffer_s16,y);
		buffer_write(buffer,buffer_u16,sprite_index);
		buffer_write(buffer,buffer_s8,global.character[player_id]);
		buffer_write(buffer,buffer_u8,global.hp[player_id]);
		buffer_write(buffer,buffer_u16,global.spellgauge[player_id]);
		buffer_write(buffer,buffer_u16,global.spell_max[player_id]);
	
		if !obj_drillimation_online_client.is_server {
			network_send_packet(obj_drillimation_online_client,buffer,buffer_get_size(buffer));
		}
		else {
			for(var i = 0; i < ds_list_size(obj_drillimation_online_client.clients); i += 1) {
				var soc = obj_drillimation_online_client.clients[| i];
				if (soc < 0) continue;
				network_send_packet(soc,buffer,buffer_get_size(buffer));
			}
		}
	}
}

function scr_get_input_cpu() {
	xaxis = (rKey - lKey);
	yaxis = (dKey - uKey);
}