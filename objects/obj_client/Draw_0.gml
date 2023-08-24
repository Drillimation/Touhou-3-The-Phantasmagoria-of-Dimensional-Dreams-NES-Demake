/// @description Insert description here
// You can write your code in this editor
var index = 0;
for(var i = 0; i < sprites; ++i;) {    
	var xx = ds_list_find_value(allsprites, index++);
	var yy = ds_list_find_value(allsprites, index++);
	var sp = ds_list_find_value(allsprites, index++);
	var spindex = ds_list_find_value(allsprites, index++);
	var col = ds_list_find_value(allsprites, index++);
	name = ds_list_find_value(allsprites, index++);

	draw_sprite_ext(sp,spindex, xx, yy, 1, 1, 0, col, 1);
}