/// @description Insert description here
// You can write your code in this editor
scr_get_input_cpu();
//depth = -y
script_execute(state);

if collision_rectangle(136,24,248,224,obj_enemy,false,true) {
	if scr_check_instance_count_in_range(x,y,64,obj_bullet_enemy) < 10 {
		target = instance_nearest(x,y,obj_enemy);
		direct = floor(point_direction(x, y, target.x, target.y) / 45);
		switch(direct) {
			case 0: rKey = 1; lKey = 0; dKey = 0; rKey = 0; break;
			case 1: rKey = 1; uKey = 1; lKey = 0; dKey = 0; break;
			case 2: uKey = 1; dKey = 0; lKey = 0; rKey = 0; break;
			case 3: uKey = 1; lKey = 1; dKey = 0; rKey = 0; break;
			case 4: lKey = 1; rKey = 0; dKey = 0; uKey = 0; break;
			case 5: lKey = 1; dKey = 1; rKey = 0; uKey = 0; break;
			case 6: dKey = 1; uKey = 0; lKey = 0; rKey = 0; break;
			case 7: dKey = 1; rKey = 1; lKey = 0; uKey = 0; break;
		}
	}
	/*
		side = instance_nearest(x,y,obj_enemy);
		if round(side.x) < round(x) + 4 { lKey = 1; } else { lKey = 0; dKey = 1; }
		if round(side.x) > round(x) - 4 { rKey = 1; } else { rKey = 0; dKey = 1; }
		if round(side.y) < round(y) + 4 { uKey = 1; } else { uKey = 0; dKey = 1; }
		if round(side.y) > round(y) - 4 { dKey = 1; } else { dKey = 0; }
	}*/
	if global.spell_max[1] <= 511 {
		j += 1
		j = j mod ((pow * 4) + 0)
		if (j == 0) {
			if ammo > 0 {
				attack_action = true;
			}
			else {
				attack_action = false;
			}
		}
	}
	else {
		attack_action = true
		if global.spellgauge[player_id] >= global.spell_max[1] {
			attack_action = false;
		}
	}
}
else {
	if x < 192 { rKey = 1; } else { rKey = 0; }
	if x > 208 { lKey = 1; } else { lKey = 0; }
	uKey = 0;
	if y < 192 { dKey = 1; } else { dKey = 0; }
	attack_action = true;
}
if collision_circle(x,y,8,obj_bullet_enemy,false,true) {
	target = instance_nearest(x,y,obj_bullet_enemy);
	direct = floor(point_direction(x, y, target.x, target.y) / 45);
	switch(direct) {
		case 0: lKey = 1; rKey = 0; dKey = 0; uKey = 0; break;
		case 1: lKey = 1; dKey = 1; rKey = 0; uKey = 0; break;
		case 2: dKey = 1; rKey = 0; lKey = 0; uKey = 0; break;
		case 3: dKey = 1; rKey = 1; lKey = 0; uKey = 0; break;
		case 4: rKey = 1; dKey = 0; lKey = 0; uKey = 0; break;
		case 5: rKey = 1; uKey = 1; dKey = 0; lKey = 0; break;
		case 6: uKey = 1; rKey = 0; dKey = 0; lKey = 0; break;
		case 7: uKey = 1; lKey = 1; rKey = 0; dKey = 0; break;
	}
	/*side_2 = instance_nearest(x,y,obj_bullet_enemy);
	if round(side_2.x) > round(x) - 1 { if x < 144 { lKey = 0; dKey = 1; } else { lKey = 1; } } else { lKey = 0; }
	if round(side_2.x) < round(x) + 1 { if x > 240 { rKey = 0; uKey = 1; } else { rKey = 1; } } else { rKey = 0; }
	if round(side_2.y) > round(y) - 1 { if y < 32 { uKey = 0; rKey = 1; } else { uKey = 1; } } else { uKey = 0; }
	if round(side_2.y) < round(y) + 1 { if y > 216 { dKey = 0; lKey = 1; } else { dKey = 1; } } else { dKey = 0; }
	*/
	attack_action = true;
}

if scr_check_instance_count_in_range(x,y,32,obj_bullet_enemy) >= 30 {
	bomb_action = true;
}

if attack_action == true {
	i += 1;
	i = i mod 4;
	if (i == 0) {
		if ammo >= 1 {
			scr_one_channel_sound(snd_shoot);
			var inst = instance_create_depth(x,y,0,obj_bullet_player);
			inst.player_id = self.player_id;
			inst.image_index = global.character[player_id];
			ammo -= 1;
		}
	}
	if global.spellgauge[player_id] < global.spell_max[1] {
		global.spellgauge[player_id] += (charge * 1.5);
	}
	else {
		global.spellgauge[player_id] = global.spell_max[1];
	}
}
else {
	ammo = pow;
	if global.spellgauge[player_id] >= 128 and global.spellgauge[player_id] <= 255 {
		//Pull off a charged attack
		timeline_index = power_shot
		timeline_position = 0;
		timeline_running = true;
		//scr_one_channel_sound(snd_charged_shot);
	}
	if global.spellgauge[player_id] >= 256 {
		//Pull off a charged attack
		timeline_index = charge_shot
		timeline_position = 0;
		timeline_running = true;
		scr_one_channel_sound(snd_charged_shot);
		if global.spellgauge[player_id] >= 256 and global.spellgauge[player_id] <= 383 {
			var inst = instance_create_depth(64,32,0,obj_charged);
			with (inst) {
				timeline_index = other.charge_2;
				timeline_position = 0;
				timeline_running = true;
			}
			if global.spell[player_id] <= 8 {
				global.spell[player_id] += 1;
			}
			global.spell_max[player_id] -= 128;
		}
		if global.spellgauge[player_id] >= 384 and global.spellgauge[player_id] <= 511 {
			var inst = instance_create_depth(64,32,0,obj_charged);
			with (inst) {
				timeline_index = other.charge_3;
				timeline_position = 0;
				timeline_running = true;
			}
			if global.spell[player_id] <= 8 {
				global.spell[player_id] += 1;
			}
			global.spell_max[player_id] -= 256;
		}
		if global.spellgauge[player_id] >= 512 {
			var inst = instance_create_depth(64,32,0,obj_charged);
			with (inst) {
				timeline_index = other.charge_3;
				timeline_position = 0;
				timeline_running = true;
			}
			if alarm[0] < 0 {
				alarm[0] = 60;
			}
			if global.boss[player_id] <= 8 {
				global.boss[player_id] += 1;
			}
			global.spell_max[player_id] -= 384;
		}
	}
	global.spellgauge[player_id] = 0;
}

if bomb_action == true {
	if global.bombs[player_id] >= 1 and !instance_exists(obj_bomb) {
		var inst = instance_create_depth(136,24,0,obj_bomb);
		inst.user = player_id;
		global.bombs[player_id] -= 1;
	}
	bomb_action = false;
}

if global.spell_max[1] < 128 {
	global.spell_max[1] = 128;
}
if global.spell_max[1] > 512 {
	global.spell_max[1] = 512;
}

if global.hp[player_id] <= 0 {
	obj_control.stopped = true;
	instance_destroy();
}