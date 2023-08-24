/// @description Insert description here
// You can write your code in this editor
scr_get_input(0);
if lKey { scr_send_key(lKey,1); } else { scr_send_key(lKey,0); }
if rKey { scr_send_key(rKey,1); } else { scr_send_key(rKey,0); }
if uKey { scr_send_key(uKey,1); } else { scr_send_key(uKey,0); }
if dKey { scr_send_key(dKey,1); } else { scr_send_key(dKey,0); }
sht = gamepad_button_check(0,gp_face1) || keyboard_check(vk_numpad2) || keyboard_check(ord("Z"));
bom = gamepad_button_check(0,gp_face2) || keyboard_check(vk_numpad6) || keyboard_check(ord("X"));
if sht { scr_send_key(sht,1); } else { scr_send_key(sht,0); }
if bom { scr_send_key(bom,1); } else { scr_send_key(bom,0); }