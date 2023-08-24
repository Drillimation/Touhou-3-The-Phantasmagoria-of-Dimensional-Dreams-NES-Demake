/// @description Insert description here
// You can write your code in this editor
spd = 1.5;
pow = 3;
charge = 3;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
player_id = global.online_id;
//can_move = false;
global.hp[player_id] = 10;

i = 0;
ammo = pow;
global.spellgauge[player_id] = 0;
global.spell_max[player_id] = 128;

state = scr_move_state;

//Sprite Variables
face = 0;

scr_character_sprites(global.online_id);
depth = 0;

is_local = true;
official_id = -1;