/// @description Insert description here
// You can write your code in this editor
if global.character[player_id] < 9 {
	draw_self();
}
if collision_circle(x,y,16,obj_bullet_enemy,false,true) {
	draw_sprite(spr_hitbox,0,x,y);
}