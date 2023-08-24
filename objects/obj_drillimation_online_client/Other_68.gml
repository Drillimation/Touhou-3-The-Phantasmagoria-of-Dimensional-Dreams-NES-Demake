/// @description Insert description here
// You can write your code in this editor
var type = async_load[? "type"];

if (type == network_type_connect) {
	var socket = async_load[? "socket"];
	var buffer = buffer_create(2,buffer_fixed,1);
	
	buffer_write(buffer,buffer_u8,DATA.INIT_DATA);
	buffer_write(buffer,buffer_u8,ds_list_size(clients));
	
	network_send_packet(socket,buffer,buffer_get_size(buffer));
	buffer_delete(buffer);
	
	var plr = instance_create_depth(64 + (128 * global.online_id),192,0,obj_player_online);
	plr.official_id = ds_list_size(clients);
	plr.is_local = false;
	
	ds_list_add(clients,socket);
}
else if type == network_type_data {
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer,buffer_seek_start,0);
	
	var data = buffer_read(buffer,buffer_u8);
	
	if data == DATA.INIT_DATA {
		var count = buffer_read(buffer,buffer_u8);
		obj_player_online.official_id = count;
		
		for(var i = 0; i < count; i += 1) {
			var plr = instance_create_depth(64 + (128 * global.online_id),192,0,obj_player_online);
			plr.official_id = i;
			plr.is_local = false;
		}
	}
	else if (data == DATA.PLAYER_UPDATE) {
		var pID = buffer_read(buffer,buffer_u8);
		with(obj_player_online) {
			if (pID = official_id) {
				x = buffer_read(buffer,buffer_s16);
				y = buffer_read(buffer,buffer_s16);
				global.character[pID] = buffer_read(buffer,buffer_u8);
				sprite_index = buffer_read(buffer,buffer_s16);
				global.hp[pID] = buffer_read(buffer,buffer_u8);
				global.spellgauge[pID] = buffer_read(buffer,buffer_u16);
				global.spell_max[pID] = buffer_read(buffer,buffer_u16);
			}
		}
	}
}