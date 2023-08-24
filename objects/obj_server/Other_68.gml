/// @description Insert description here
// You can write your code in this editor
var eventid = ds_map_find_value(async_load, "id");

if server == eventid {
	// If the socket ID is the server one, then we have a new 
	/// client connecting, OR an old client disconnecting
	scr_connect_disconnect_client()
} else if eventid == global.client {
	// Do nothing if this is for our "local" client
}
else {
	// All other sockets are connected client sockets, and we have recieved commands from them.
	scr_server_received_data();
}
