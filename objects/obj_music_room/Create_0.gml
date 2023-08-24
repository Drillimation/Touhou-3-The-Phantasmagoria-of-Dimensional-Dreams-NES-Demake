/// @description Insert description here
// You can write your code in this editor
region = 0;
button_h = 8;

scr_soundtrack()
//Option Array
button[0][0] = "A Dream Transcending Space-Time";
button[0][1] = "ゆめは　じくうを　こえて";
button[1][0] = "Selection";
button[1][1] = "Ｓｅｌｅｃｔｉｏｎ";
button[2][0] = "Eastern Mystic Love Consultation"
button[2][1] = "とうほうようれんだん"
button[3][0] = "Reincarnation";
button[3][1] = "Ｒｅｉｎｃａｒｎａｔｉｏｎ";
button[4][0] = "Dimensional Dream";
button[4][1] = "Ｄｉｍｅｎｓｉｏｎａｌ　Ｄｒｅａｍ";
button[5][0] = "Tabula Rasa ~ The Empty Girl";
button[5][1] = "Ｔａｂｕｌａ　Ｒａｓａ　～　くうはくしょうじょ";
button[6][0] = "Maniacal Princess";
button[6][1] = "Ｍａｎｉａｃａｌ　Ｐｒｉｎｃｅｓｓ";
button[7][0] = "Vanishing Dream ~ Lost Dream";
button[7][1] = "ゆめしょうしつ　～　Ｌｏｓｔ　Ｄｒｅａｍ";
button[8][0] = "Visionary Game ~ Dream War";
button[8][1] = "むげんゆうぎ　～　Ｄｒｅａｍ　Ｗａｒ";
button[9][0] = "The Time-Leaping Youkai Girl";
button[9][1] = "じかんとぶようかいしょうじょ　～　Ｍｏｎｓｏｏｎ　Ｏｒａｎｇｅ";
button[10][0] = "Decisive Magic Battle";
button[10][1] = "まほうけっせん！　～　Ｆｉｇｈｔ　ｉｔ　Ｏｕｔ！";
button[11][0] = "Disunified Field Theory of Magic";
button[11][1] = "ひとういつまほうせかいろん";
button[12][0] = "Sailor of Time";
button[12][1] = "Ｓａｉｌｏｒ　ｏｆ　Ｔｉｍｅ";
button[13][0] = "Love of Magical Chimes";
button[13][1] = "まほうしょうあい";
button[14][0] = "Strawberry Crisis!";
button[14][1] = "Ｓｔｒａｗｂｅｒｒｙ　Ｃｒｉｓｉｓ！！";
button[15][0] = "Dream of Eternity";
button[15][1] = "くうおんの　ゆめ";
button[16][0] = "Eastern Blue Sky";
button[16][1] = "とうほうの　あおいそら";
button[17][0] = "Eternal Full Moon";
button[17][1] = "えいえんの　まんげつ";
button[18][0] = "Maple Dream";
button[18][1] = "Ｍａｐｌｅ　Ｄｒｅａｍ…";
button[19][0] = "Ghostly Person's Holiday";
button[19][1] = "れいじんの　きゅうじつ";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;

text[0] = @"Push A to play song
Push B to return to main menu"
text[1] = @"うたをえんそうするにＡボタンをおして
メインメニューにもどるにＢボタンをおして"