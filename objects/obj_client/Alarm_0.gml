/// @description Insert description here
// You can write your code in this editor
buffer_seek(buff, buffer_seek_start, 0);

// Write the command into the buffer.
buffer_write(buff, buffer_s16, PING_CMD);

// Send this to the server
var size = network_send_packet(client, buff, buffer_tell(buff));
if size <= 0 {
	network_destroy(client);
	buffer_delete(buff);
	//game_restart();
}
alarm[0] = 120;