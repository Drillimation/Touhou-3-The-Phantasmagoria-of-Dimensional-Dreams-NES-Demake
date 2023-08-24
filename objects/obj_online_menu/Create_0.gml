/// @description Insert description here
// You can write your code in this editor
global.online_id = 0;
region = 0;
button_h = 8;

button[0] = "CREATE GAME";
button[1] = "JOIN GAME";
button[2] = "RETURN TO MENU";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;

randomize();

server_ip = "127.0.0.1";
server_port = 3000;

is_server = false;