/// @description Insert description here
// You can write your code in this editor
audio_play_sound(snd_appear,10,false);
if x > 128 {
	enemy_id = 0;
}
else {
	enemy_id = 1;
}

hp = global.boss[enemy_id] * 10;

boss[0] = spr_reimu_boss
boss[1] = spr_marisa_boss
boss[2] = spr_mima_boss
boss[3] = spr_ellen_boss
boss[4] = spr_kotohime_boss
boss[5] = spr_kana_boss
boss[6] = spr_risako_boss
boss[7] = spr_kagami_boss
boss[8] = spr_chiyuri_boss
boss[9] = spr_yumemi_boss

sprite_index = boss[global.character[enemy_id]];

attack_pattern[0] = timeline_reimu_boss
attack_pattern[1] = timeline_marisa_boss
attack_pattern[2] = timeline_mima_boss
attack_pattern[3] = timeline_ellen_boss
attack_pattern[4] = timeline_kotohime_boss
attack_pattern[5] = timeline_kana_boss
attack_pattern[6] = timeline_risako_boss
attack_pattern[7] = timeline_kagami_boss
attack_pattern[8] = timeline_chiyuri_boss
attack_pattern[9] = timeline_yumemi_boss

timeline_index = attack_pattern[global.character[enemy_id]];
timeline_position = 0;
timeline_running = true;

randomize();
vspeed = choose(-0.125,0.125);
hspeed = choose(-0.25,0.25);