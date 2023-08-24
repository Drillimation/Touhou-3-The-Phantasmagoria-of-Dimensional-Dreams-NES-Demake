/// @description Insert description here
// You can write your code in this editor

client = network_create_socket(network_socket_tcp);
connected = network_connect(client,"127.0.0.1",64198);

show_debug_message("Connected/つながった");

client_buffer = buffer_create(1024,buffer_fixed,1);