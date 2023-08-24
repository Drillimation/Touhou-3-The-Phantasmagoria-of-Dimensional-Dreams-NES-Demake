/// @description Insert description here
// You can write your code in this editor
if other.sprite_index == spr_player_bullet {
	hp -= 1;
	global.playerscore[other.player_id] += 10;
	instance_destroy(other);
}