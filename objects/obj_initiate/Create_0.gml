/// @description Insert description here
// You can write your code in this editor
//global.character[0] = 0;
//global.character[1] = 0;
if !file_exists("highscores.ini") {
	ini_open("highscores.ini");
	defscore = 70000;
	for (var i = 0; i < 10; i += 1) {
		global.rank[i][0] = "UNKNOWN"
		if i == 0 {
			global.rank[i][1] = 76500
		}
		else {
			global.rank[i][1] = defscore
			defscore -= 5000
		}
		global.rank[i][2] = 1
		ini_write_string(string(i),"name",global.rank[i][0])
		ini_write_real(string(i),"score",global.rank[i][1]);
		ini_write_real(string(i),"stage",global.rank[i][2]);
	}
	ini_close();
	global.highscore = global.rank[0][1];
}
else {
	ini_open("highscores.ini");
	global.highscore = ini_read_real("0","score",76500);
	ini_close();
}