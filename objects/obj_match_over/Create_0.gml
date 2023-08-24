/// @description Insert description here
// You can write your code in this editor
if global.wins[0] == 2 {
	winner = 0;
	loser = 1;
}
if global.wins[1] == 2 {
	winner = 1;
	loser = 0;
}
file = "victory_quotes" + string(global.suf) + ".ini";
ini_open(file);

text[0] = ini_read_string(string(global.character[winner]),string(global.character[loser]),"Error displaying text");
text[0] = string_replace_all(text[0], "#", "\n");

ini_close();

ad_text = "PUSH A BUTTON TO CONTINUE"

i = 0;

alarm[0] = room_speed * 4.5;