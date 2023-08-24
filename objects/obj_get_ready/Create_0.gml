/// @description Insert description here
// You can write your code in this editor
file = "characters" + string(global.suf) + ".ini";
ini_open(file);

player[0] = ini_read_string("description",string(global.character[0]),"Error displaying text");
player[0] = string_replace_all(player[0], "#", "\n");
player[1] = ini_read_string("description",string(global.character[1]),"Error displaying text");
player[1] = string_replace_all(player[1], "#", "\n");

ini_close();