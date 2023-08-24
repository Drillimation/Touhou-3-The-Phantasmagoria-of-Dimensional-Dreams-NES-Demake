// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_generate_enemies(_i,_type,_max){
	switch(_i) {
		case 0:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(24 + (i * 128),16,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_vert_turn_r;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
				var inst = instance_create_depth(64 + (i * 128),16,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_vert_straight;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
				var inst = instance_create_depth(104 + (i * 128),16,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_vert_turn_l;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
		case 1:
			for (var i = 0; i < 2; i += 1) {
				for (var j = 0; j < 2; j += 1) {
					var inst = instance_create_depth(24 + (i * 128) + (j * 16),16 - (j * 16),0,obj_enemy);
					inst.sprite_index = _type;
					inst.hp = _max;
					inst.path = path_enemy_turn_r;
					with(inst) {
						path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
					}
				}
			}
			break;
		case 2:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(32 + (i * 128),16,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_vert_curve;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
		case 3:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(16 + (i * 128),120,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_loop_r;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
				var inst = instance_create_depth(112 + (i * 128),120,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_loop_l;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
		case 4:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(16 + (i * 128),64,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_hor_straight_r;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
				var inst = instance_create_depth(16 + (i * 128),128,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_hor_straight_r;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
		case 5:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(112 + (i * 128),64,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_hor_straight_l;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
				var inst = instance_create_depth(112 + (i * 128),128,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_hor_straight_l;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
		case 6:
			for (var i = 0; i < 2; i += 1) {
				var inst = instance_create_depth(16 + (i * 128),64,0,obj_enemy);
				inst.sprite_index = _type;
				inst.hp = _max;
				inst.path = path_enemy_hor_curve;
				with(inst) {
					path_start(path,1 + (0.05 * global.stage),path_action_stop,0);
				}
			}
			break;
	}
}