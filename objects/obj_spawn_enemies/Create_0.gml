/// @description Insert description here
// You can write your code in this editor
randomize();
enemy = irandom_range(0,3);
pasu = irandom_range(0,6);
switch (enemy) {
	case 0:
		i[0] = spr_bakebake_04
		i[1] = spr_bakebake_03
		i[2] = spr_bakebake_02
		i[3] = spr_bakebake_01
		break;
	case 1:
		i[0] = spr_heart_04
		i[1] = spr_heart_03
		i[2] = spr_heart_02
		i[3] = spr_heart_01
		break;
	case 2:
		i[0] = spr_moon_04
		i[1] = spr_moon_03
		i[2] = spr_moon_02
		i[3] = spr_moon_01
		break;
	case 3:
		i[0] = spr_star_04
		i[1] = spr_star_03
		i[2] = spr_star_02
		i[3] = spr_star_01
		break;
}

ammo = 3;
scr_generate_enemies(pasu,i[ammo],ammo);
alarm[0] = room_speed * 0.5;
alarm[1] = room_speed * 3;