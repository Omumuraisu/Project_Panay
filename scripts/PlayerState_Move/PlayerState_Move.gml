// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Move(){
	
image_speed = 1;

if(!(keyboard_check(ord("W") || ord("A") || ord("S") || ord("D")))){
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_IdleRight;
	}
	else if (LastMoveKey == 2)
	{
		sprite_index = spr_Junjun_IdleLeft;
	}
}
if(keyboard_check(ord("W")) && place_free(x, y - collisionSpeed)){
	y -= MovementSpeed;
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_MoveRight;
	}
	else
	{
		sprite_index = spr_Junjun_MoveLeft;
	}
	
}
if(keyboard_check(ord("S")) && place_free(x, y + collisionSpeed)){
	y += MovementSpeed;
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_MoveRight;
	}
	else
	{
		sprite_index = spr_Junjun_MoveLeft;
	}
}
if(keyboard_check(ord("A")) && place_free(x - collisionSpeed , y)){
	x -= MovementSpeed;
	LastMoveKey = 2;
	sprite_index = spr_Junjun_MoveLeft;
}
if(keyboard_check(ord("D")) && place_free(x + collisionSpeed , y)){
	x += MovementSpeed;
	sprite_index = spr_Junjun_MoveRight;
	LastMoveKey = 1;

}
}