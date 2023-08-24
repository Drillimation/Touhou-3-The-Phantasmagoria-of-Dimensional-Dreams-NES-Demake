// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_character_sprites(_player){
	switch(global.character[_player]) {
		case 0:
			spd = 1.5;
			pow = 1;
			charge = 5;
			//Reimu Hakurei
			left = spr_reimu_left
			northwest = spr_reimu_left
			southwest = spr_reimu_left
			right = spr_reimu_right
			northeast = spr_reimu_right
			southeast = spr_reimu_right
			up = spr_reimu
			down = spr_reimu
			idle = spr_reimu
			charge_shot = timeline_reimu_charge
			power_shot = timeline_reimu_power
			charge_2 = timeline_reimu_charge_2
			charge_3 = timeline_reimu_charge_3
			break;
		case 1:
			spd = 1.5;
			pow = 4;
			charge = 3;
			//Marisa Kirisame
			left = spr_marisa_left
			northwest = spr_marisa_left
			southwest = spr_marisa_left
			right = spr_marisa_right
			northeast = spr_marisa_right
			southeast = spr_marisa_right
			up = spr_marisa
			down = spr_marisa
			idle = spr_marisa
			charge_shot = timeline_marisa_charge
			power_shot = timeline_marisa_power
			charge_2 = timeline_marisa_charge_2
			charge_3 = timeline_marisa_charge_3
			break;
		case 2:
			spd = 1.75;
			pow = 4;
			charge = 2;
			//Mima
			left = spr_mima_left
			northwest = spr_mima_left
			southwest = spr_mima_left
			right = spr_mima_right
			northeast = spr_mima_right
			southeast = spr_mima_right
			up = spr_mima
			down = spr_mima
			idle = spr_mima
			charge_shot = timeline_mima_charge
			power_shot = timeline_mima_power
			charge_2 = timeline_mima_charge_2
			charge_3 = timeline_mima_charge_3
			break;
		case 3:
			spd = 1.25;
			pow = 3;
			charge = 1;
			//Ellen
			left = spr_ellen_left
			northwest = spr_ellen_left
			southwest = spr_ellen_left
			right = spr_ellen_right
			northeast = spr_ellen_right
			southeast = spr_ellen_right
			up = spr_ellen
			down = spr_ellen
			idle = spr_ellen
			charge_shot = timeline_ellen_charge
			power_shot = timeline_ellen_power
			charge_2 = timeline_ellen_charge_2
			charge_3 = timeline_ellen_charge_3
			break;
		case 4:
			spd = 1.75;
			pow = 1;
			charge = 4;
			//Kotohime
			left = spr_kotohime_left
			northwest = spr_kotohime_left
			southwest = spr_kotohime_left
			right = spr_kotohime_right
			northeast = spr_kotohime_right
			southeast = spr_kotohime_right
			up = spr_kotohime
			down = spr_kotohime
			idle = spr_kotohime
			charge_shot = timeline_kotohime_charge
			power_shot = timeline_kotohime_power
			charge_2 = timeline_kotohime_charge_2
			charge_3 = timeline_kotohime_charge_3
			break;
		case 5:
			spd = 1.25;
			pow = 2;
			charge = 5;
			//Kana Anaberal
			left = spr_kana_left
			northwest = spr_kana_left
			southwest = spr_kana_left
			right = spr_kana_right
			northeast = spr_kana_right
			southeast = spr_kana_right
			up = spr_kana
			down = spr_kana
			idle = spr_kana
			charge_shot = timeline_kana_charge
			power_shot = timeline_kana_power
			charge_2 = timeline_kana_charge_2
			charge_3 = timeline_kana_charge_3
			break;
		case 6:
			spd = 1.75;
			pow = 5;
			charge = 1;
			//Risako Asakura
			left = spr_risako_left
			northwest = spr_risako_left
			southwest = spr_risako_left
			right = spr_risako_right
			northeast = spr_risako_right
			southeast = spr_risako_right
			up = spr_risako
			down = spr_risako
			idle = spr_risako
			charge_shot = timeline_risako_charge
			power_shot = timeline_risako_power
			charge_2 = timeline_risako_charge_2
			charge_3 = timeline_risako_charge_3
			break;
		case 7:
			spd = 1.5;
			pow = 3;
			charge = 3;
			//Kagami Ochiai
			left = spr_kagami_left
			northwest = spr_kagami_left
			southwest = spr_kagami_left
			right = spr_kagami_right
			northeast = spr_kagami_right
			southeast = spr_kagami_right
			up = spr_kagami
			down = spr_kagami
			idle = spr_kagami
			charge_shot = timeline_kagami_charge
			power_shot = timeline_kagami_power
			charge_2 = timeline_kagami_charge_2
			charge_3 = timeline_kagami_charge_3
			break;
		case 8:
			spd = 2;
			pow = 2;
			charge = 4;
			//Chiyuri Kitashirakawa
			left = spr_chiyuri_left
			northwest = spr_chiyuri_left
			southwest = spr_chiyuri_left
			right = spr_chiyuri_right
			northeast = spr_chiyuri_right
			southeast = spr_chiyuri_right
			up = spr_chiyuri
			down = spr_chiyuri
			idle = spr_chiyuri
			charge_shot = timeline_chiyuri_charge
			power_shot = timeline_chiyuri_power
			charge_2 = timeline_chiyuri_charge_2
			charge_3 = timeline_chiyuri_charge_3
			break;
		case 9:
			spd = 2;
			pow = 5;
			charge = 3;
			//Yumemi Okazaki
			left = spr_yumemi_left
			northwest = spr_yumemi_left
			southwest = spr_yumemi_left
			right = spr_yumemi_right
			northeast = spr_yumemi_right
			southeast = spr_yumemi_right
			up = spr_yumemi
			down = spr_yumemi
			idle = spr_yumemi
			charge_shot = timeline_yumemi_charge
			power_shot = timeline_yumemi_power
			charge_2 = timeline_yumemi_charge_2
			charge_3 = timeline_yumemi_charge_3
			break;
	}
}