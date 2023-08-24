/// @description Insert description here
// You can write your code in this editor
region = 0;
button_h = 8;

button[0] = "REIMU";
button[1] = "MARISA";
button[2] = "MIMA";
button[3] = "ELLEN";
button[4] = "KOTOHIME";
button[5] = "KANA";
button[6] = "RISAKO"; if global.reg_no == 1 { button[6] = "RIKAKO"; }
button[7] = "KAGAMI";
button[8] = "CHIYURI";
button[9] = "YUMEMI";
buttons_y = array_length(button);

menu_index_y = 0;
last_selected_y = 0;
next = false;
prev = false;

text[0] = @"Use control pad to select and
push A button to confirm";
text[1] = @"せんたくするに　コントロールパッドを　つかう、
かくにんするに　Ａボタンを　おしてください";

ready = false;