// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Follow(){
	x += lengthdir_x(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
	y += lengthdir_y(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
	frame_timer = 0;
	_destination_x = x;
	_destination_y = y;
}