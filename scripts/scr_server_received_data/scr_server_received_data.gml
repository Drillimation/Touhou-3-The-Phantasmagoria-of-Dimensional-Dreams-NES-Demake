// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_server_received_data(){
	// get the buffer the data resides in
	var buff = ds_map_find_value(async_load, "buffer");
    
	// read ythe command 
	var cmd = buffer_read(buff, buffer_s16);

	// Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
	var sock = ds_map_find_value(async_load, "id");

	// Look up the client details
	var inst = ds_map_find_value(Clients, sock);

	// Is this a KEY command?
	if cmd==KEY_CMD {
		// Read the key that was sent
		var key = buffer_read(buff, buffer_s16);

		// And it's up/down state
		var updown = buffer_read(buff, buffer_s16);
    
		// translate keypress into an index for our player array.
		if key == vk_left | ord("A") | gp_padl | gp_axislh < 0 {
			key=LEFT_KEY;
		}
		else if key == vk_right | ord("D") | gp_padr | gp_axislh > 0 {
			key=RIGHT_KEY;
		}
		if key == vk_left | ord("A") | gp_padl | gp_axislh < 0 {
			key=LEFT_KEY;
		}
		else if key == vk_up | ord("W") | gp_padu | gp_axislv < 0 {
			key=UP_KEY;
		}
		else if key == vk_down | ord("S") | gp_padd | gp_axislv > 0 {
			key=DOWN_KEY;
		}
		else if key == ord("Z") | vk_numpad2 | gp_face1 {
			key=SHOOT_KEY;
		}
		else if key == ord("X") | vk_numpad6 | gp_face2 {
			key=BOMB_KEY;
		}
         
		// translate updown into a bool for the player array       
		if updown == 0 {
			inst.keys[key] = false;
		}
		else {
			inst.keys[key] = true;
		}
	}
	// Is this a NAME command?
	else if cmd == NAME_CMD {
		// Set the client "name"
		inst.PlayerName = buffer_read(buff, buffer_string);    
	}
	else if cmd == PING_CMD {
		// keep alive - ignore it
	}
}