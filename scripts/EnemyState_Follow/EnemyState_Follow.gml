// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Follow(){
	image_speed = 1;
	if(x > Obj_Junjun.x){
		sprite_index = spr_Aswang_WalkLeft;
	}
	else{
		sprite_index = spr_Aswang_WalkRight;
	}
	x += lengthdir_x(xspeed, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
	y += lengthdir_y(xspeed, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y));
}