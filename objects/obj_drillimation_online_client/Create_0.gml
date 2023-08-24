/// @description Insert description here
// You can write your code in this editor
randomize();

server_ip = "127.0.0.1";
server_port = 3000;

is_server = false;

enum DATA {
	INIT_DATA,
	PLAYER_UPDATE
}

clients = ds_list_create();