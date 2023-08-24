/// @description Insert description here
// You can write your code in this editor
if x < 128 {
	winner_id = 0;
}
else {
	winner_id = 1;
}

bonus_1 = global.time * 100;
bonus_2 = global.hp[winner_id] * 1000;
bonus_3 = global.spell[winner_id] * 1000;
bonus_4 = global.boss[winner_id] * 1000;

total = bonus_1 + bonus_2 + bonus_3 + bonus_4

global.playerscore[winner_id] += total;
global.wins[winner_id] += 1;

alarm[0] = room_speed * 5;