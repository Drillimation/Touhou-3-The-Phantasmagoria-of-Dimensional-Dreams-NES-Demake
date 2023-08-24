/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
hp = 1;

randomize();
alarm[0] = irandom_range(6,24) * 5
path = path_enemy_vert_straight;

//path_start(path,1,path_action_stop,0);
enemy_id = 0;
if x > 128 {
	enemy_id = 1;
}