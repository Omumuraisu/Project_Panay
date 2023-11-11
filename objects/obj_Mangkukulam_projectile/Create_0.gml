/// @description Insert description here
// You can write your code in this editor

if(x < Obj_Junjun.x){
	targetDirection = arctan(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y)/(Obj_Junjun.x - x));
}
else{
	targetDirection = arctan2(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y), (Obj_Junjun.x - x));
}

summoning_sickness = room_speed*0.5;