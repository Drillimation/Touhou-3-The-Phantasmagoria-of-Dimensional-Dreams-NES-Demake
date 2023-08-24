/// @description Insert description here
// You can write your code in this editor
if room == room_play_field or room == room_get_ready {
	if global.onlinemode == true {
		var plr = instance_create_depth(64 + (128 * global.online_id),192,0,obj_player_online);
		plr.official_id = 0;
	
		if (is_server) {
			ds_list_add(clients,-1);
		}
	}
}