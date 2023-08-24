/// @description Insert description here
// You can write your code in this editor
global.hp[1] -= 1;
scr_one_channel_sound(snd_hurt);
instance_destroy(other);