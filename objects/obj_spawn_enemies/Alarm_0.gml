/// @description Insert description here
// You can write your code in this editor
randomize();
ammo -= 1;
if ammo >= 0 {
	scr_generate_enemies(pasu,i[ammo],ammo + 1)
	alarm[0] = room_speed * 0.5;
}