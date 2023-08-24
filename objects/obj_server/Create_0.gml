/// @description Insert description here
// You can write your code in this editor
global.counter = 0;
global.haveserver = true;

global.PlayerTotal = 0;
global.BaddieCount = 0;

broadcast_buffer = buffer_create(32, buffer_fixed, 1);
player_buffer = buffer_create(16384, buffer_fixed, 1);
Clients = ds_map_create();
socketlist = ds_list_create();

server = network_create_server(global.ServerType, 6510, 2);
if server < 0 {
	global.haveserver = false;
	ds_map_destroy(Clients);
	ds_list_destroy(socketlist);
	buffer_delete(broadcast_buffer);
	buffer_delete(player_buffer);
	instance_destroy();
}
alarm[0] = 60;
depth = 0;