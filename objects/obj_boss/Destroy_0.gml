/// @description Insert description here
// You can write your code in this editor
switch (enemy_id) {
	case 0: if instance_exists(obj_player_1) { obj_player_1.summoned_boss = false } break;
	case 1: if instance_exists(obj_player_cpu) { obj_player_cpu.summoned_boss = false; } if instance_exists(obj_player_2) { obj_player_2.summoned_boss = false } break;
}
