// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerKnockback(){
	Obj_Junjun.x += lengthdir_x(50, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
	Obj_Junjun.y += lengthdir_y(50, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
}