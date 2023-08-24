/// @description Insert description here
// You can write your code in this editor
var count = ds_list_size(socketlist);

if count > 0
{
/// Send all sprites to all clients
global.player_buffer = player_buffer;
    
// Reset buffer to start - Networking ALWAYS reads from the START of the buffer
buffer_seek(player_buffer, buffer_seek_start, 0);
    
// Total number of sprites (players+baddies)
buffer_write(player_buffer, buffer_u32, global.PlayerTotal + global.BaddieCount);
buffer_write(player_buffer, buffer_u32, room);

// Dummy player x,y...will fill in later. This allows the client to follow themselves in a scrolling level.
buffer_write(global.player_buffer, buffer_s16, 0);
buffer_write(global.player_buffer, buffer_s16, 0);

// All attached players
with(obj_player_online) {
	buffer_write(global.player_buffer, buffer_s16, x);
	buffer_write(global.player_buffer, buffer_s16, y);
	buffer_write(global.player_buffer, buffer_s16, sprite_index);
	buffer_write(global.player_buffer, buffer_s16, image_index);
	buffer_write(global.player_buffer, buffer_s32, image_blend);
}

// Now send all baddies
with(obj_enemy) {
	buffer_write(global.player_buffer, buffer_s16, x);
	buffer_write(global.player_buffer, buffer_s16, y);
	buffer_write(global.player_buffer, buffer_s16, sprite_index);
	buffer_write(global.player_buffer, buffer_s16, image_index);
	buffer_write(global.player_buffer, buffer_s32, image_blend);
}
with(obj_bullet_enemy) {
	buffer_write(global.player_buffer, buffer_s16, x);
	buffer_write(global.player_buffer, buffer_s16, y);
	buffer_write(global.player_buffer, buffer_s16, sprite_index);
	buffer_write(global.player_buffer, buffer_s16, image_index);
	buffer_write(global.player_buffer, buffer_s32, image_blend);
}
with(obj_bullet_player) {
	buffer_write(global.player_buffer, buffer_s16, x);
	buffer_write(global.player_buffer, buffer_s16, y);
	buffer_write(global.player_buffer, buffer_s16, sprite_index);
	buffer_write(global.player_buffer, buffer_s16, image_index);
	buffer_write(global.player_buffer, buffer_s32, image_blend);
}

//Do all variables
for(var i = 0; i < 2; i += 1) {
	buffer_write(global.player_buffer, buffer_u8, global.character[i]);
	buffer_write(global.player_buffer, buffer_u32, global.playerscore[i]);
	buffer_write(global.player_buffer, buffer_u8, global.bombs[i]);
	buffer_write(global.player_buffer, buffer_u8, global.spell[i]);
	buffer_write(global.player_buffer, buffer_u8, global.boss[i]);
	buffer_write(global.player_buffer, buffer_u8, global.wins[i]);
	buffer_write(global.player_buffer, buffer_u8, global.hp[i])
	buffer_write(global.player_buffer, buffer_u16, global.combo[i])
}

var buffer_size = buffer_tell(player_buffer);
// Now send all data... to all clients
for(var i = 0; i < count; ++i;)
    {   
    // get the socket
    var sock = ds_list_find_value(socketlist, i);

    // Write in client location, so it can do a scroll window "follow"
    buffer_seek(player_buffer, buffer_seek_start, 4);

    // Get the player's instance, so we can get it's X,Y
    var inst = ds_map_find_value(Clients, sock);
    buffer_write(global.player_buffer, buffer_s16, inst.x);
    buffer_write(global.player_buffer, buffer_s16, inst.y);

    // Send data to client
    network_send_packet(sock,player_buffer, buffer_size);
    }
}