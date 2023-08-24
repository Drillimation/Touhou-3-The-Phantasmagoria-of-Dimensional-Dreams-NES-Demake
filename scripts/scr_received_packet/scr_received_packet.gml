// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_received_packet(_buffer,_socket){
	msgid = buffer_read(_buffer,buffer_u8);
	switch (msgid) {
		case network.move:
			var move_x = buffer_read(_buffer,buffer_u16);
			var move_y = buffer_read(_buffer,buffer_u16);
			
			var _player = ds_map_find_value(socket_to_instanceid,socket)
			_player.x = move_x;
			_player.y = move_y;
			
			buffer_seek(server_buffer,buffer_seek_start,0);
			buffer_write(server_buffer,buffer_u8,network.move);
			buffer_write(server_buffer,buffer_u16,move_x);
			buffer_write(server_buffer,buffer_u16,move_y);
			buffer_write(_socket,server_buffer,buffer_tell(server_buffer));
			break;
	}
}

function scr_received_packet_client(_buffer) {
	msgid = buffer_read(_buffer,buffer_u8);
	
	switch(msgid) {
		case network.player_connect:
			var _socket = buffer_read(_buffer,buffer_u8);
			var _x = buffer_read(buffer,buffer_u16);
			var _y = buffer_read(buffer,buffer_u16);
			
			var _player = instance_create_depth(64 + (global.online_id * 128), 192,0,obj_player_online);
			_player.socket = _socket;
			break;
			
		/*case network.player_joined:
			var _socket = buffer_read(_buffer,buffer_u8);
			var _x = buffer_read(buffer,buffer_u16);
			var _y = buffer_read(buffer,buffer_u16);
			
			var _opponent = instance_create_depth(64 + (global.online_id * 128), 192,0,obj_player_online);
			_opponent.socket = _socket;
			break;*/
		
		case network.move:
			var move_x = buffer_read(_buffer,buffer_u16);
			var move_y = buffer_read(_buffer,buffer_u16);
			
			obj_player_online.x = move_x;
			obj_player_online.y = move_y;
			break;
	}
}