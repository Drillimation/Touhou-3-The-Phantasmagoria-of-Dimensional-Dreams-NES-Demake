/// @description Insert description here
// You can write your code in this editor
if global.wins[0] >= 2 or global.wins[1] >= 2 {
	room_goto(room_results);
}
else {
	global.rnd += 1;
	room_restart();
}