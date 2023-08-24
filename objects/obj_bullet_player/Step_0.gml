/// @description Insert description here
// You can write your code in this editor
if sprite_index == spr_player_bullet or sprite_index == spr_kana_bullet or sprite_index == spr_risako_bullet or sprite_index == spr_yumemi_bullet_2 {
	image_angle = 0;
}
else {
	image_angle = direction;
}
if sprite_index == spr_yumemi_bullet_2 {
	image_speed = 1;
}
if player_id == 0 {
	if x < 8 or x > 120 {
	instance_destroy();
	}
}
if player_id == 1 {
	if x < 136 or x > 248 {
		instance_destroy();
	}
}