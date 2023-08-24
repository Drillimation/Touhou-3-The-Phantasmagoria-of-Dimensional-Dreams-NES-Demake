// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_instance_count_in_range(_x,_y,_range,_obj){
	count = 0;
	with(_obj) {
		other.count += point_in_rectangle(x,y,_x - _range,_y - _range,_x + _range,_y + _range)
	}
	return count;
}