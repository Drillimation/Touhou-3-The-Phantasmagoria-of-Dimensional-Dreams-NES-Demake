/// @description Insert description here
// You can write your code in this editor
spd = 1.5;
pow = 3;
charge = 3;
hspd = 0;
vspd = 0;
len = 0;
dir = 0;
player_id = 1;
//can_move = false;
global.hp[player_id] = 10;

i = 1;
ammo = pow;
global.spellgauge[player_id] = 0;
if global.wins[0] == 1 {
	global.spell_max[player_id] = 512;
}
else {
	global.spell_max[player_id] = 128;
}
summoned_boss = false;

state = scr_move_state;

//Sprite Variables
face = 0;

scr_character_sprites(1);
depth = 0;