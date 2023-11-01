/// @description Insert description here
// You can write your code in this editor
if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - Obj_Junjun.y)) <= 540){
	x += lengthdir_x(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
	y += lengthdir_y(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
	_destination_x = x;
	_destination_y = y;
	i = 0;
}