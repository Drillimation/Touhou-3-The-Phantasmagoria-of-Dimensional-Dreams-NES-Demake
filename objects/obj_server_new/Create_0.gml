/// @description Insert description here
// You can write your code in this editor
enum network {
	player_connect,
	move,
	shoot,
	bomb
}
port = 64198;
max_clients = 2;

network_create_server(network_socket_tcp,port,max_clients);
server_buffer = buffer_create(1024,buffer_fixed,1);
socket_list = ds_list_create();
socket_to_instanceid = ds_map_create();