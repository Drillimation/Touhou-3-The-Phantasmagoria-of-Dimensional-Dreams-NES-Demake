/// @description Insert description here
// You can write your code in this editor
scr_get_input(0);
//depth = -y
script_execute(state);

if gamepad_button_check(0,gp_face1) or keyboard_check(ord("Z")) or keyboard_check(vk_numpad2) {
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
	if global.spellgauge[player_id] < global.spell_max[player_id] {
		global.spellgauge[player_id] += charge;
	}
	else {
		global.spellgauge[player_id] = global.spell_max[player_id];
	}
}
if gamepad_button_check_released(0,gp_face1) or keyboard_check_released(ord("Z")) or keyboard_check_released(vk_numpad2) {
	ammo = pow;
	if global.spellgauge[player_id] > 128 and global.spellgauge[player_id] < 255 {
		//Pull off a charged attack
		timeline_index = power_shot
		timeline_position = 0;
		timeline_running = true;
		//scr_one_channel_sound(snd_charged_shot);
	}
	if global.spellgauge[player_id] > 256 {
		//Pull off a charged attack
		global.spellsused += 1;
		timeline_index = charge_shot
		timeline_position = 0;
		timeline_running = true;
		scr_one_channel_sound(snd_charged_shot);
		if global.spellgauge[player_id] > 256 and global.spellgauge[player_id] < 383 {
			var inst = instance_create_depth(192 - (global.online_id * 128),32,0,obj_charged);
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
		if global.spellgauge[player_id] > 384 and global.spellgauge[player_id] < 511 {
			var inst = instance_create_depth(192 - (global.online_id * 128),32,0,obj_charged);
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
			global.bossesused += 1;
			var inst = instance_create_depth(192 - (global.online_id * 128),32,0,obj_charged);
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

if keyboard_check_pressed(ord("X")) or gamepad_button_check_pressed(0,gp_face2) {
	if global.bombs[player_id] >= 1 and !instance_exists(obj_bomb) {
		var inst = instance_create_depth(8 + (online_id * 128),24,0,obj_bomb);
		inst.user = player_id;
		global.bombs[player_id] -= 1;
	}
}
if global.spell_max[player_id] < 128 {
	global.spell_max[player_id] = 128;
}
if global.spell_max[player_id] > 512 {
	global.spell_max[player_id] = 512;
}

if global.hp[player_id] <= 0 {
	obj_control.stopped = true;
	instance_destroy();
}