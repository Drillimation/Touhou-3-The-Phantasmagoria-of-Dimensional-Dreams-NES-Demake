// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_send_key(_argument0,_argument1){
	// Move to start of buffer. Networking ALWAYS takes the data from the START of a buffer.
	buffer_seek(buff, buffer_seek_start, 0);

	// Write the command, the key and the UP/DOWN state into the buffer
	buffer_write(buff, buffer_s16, KEY_CMD);
	buffer_write(buff, buffer_s16, _argument0);
	buffer_write(buff, buffer_s16, _argument1);

	// Send this to the server
	network_send_packet(client, buff, buffer_tell(buff));
}