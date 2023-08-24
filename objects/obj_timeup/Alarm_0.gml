/// @description Insert description here
// You can write your code in this editor
if global.hp[0] > global.hp[1] {
	//Declare player 1 the winner
	global.hp[1] = 0;
}
if global.hp[0] < global.hp[1] {
	//Declare player 2 the winner
	global.hp[0] = 0;
}
if global.hp[0] == global.hp[1] {
	//Declare a draw
	instance_create_depth(8,24,0,obj_draw);
	instance_create_depth(136,24,0,obj_draw);
}
instance_destroy();