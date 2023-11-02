/// @description simple movement for JunJun
if(keyboard_check(ord("W")) && place_empty(x, y - 5, collisionBlock)){
	y -= MovementSpeed;
	
}
if(keyboard_check(ord("S")) && place_empty(x, y + 5, collisionBlock)){
	y += MovementSpeed;
}
if(keyboard_check(ord("A")) && place_empty(x - 5, y, collisionBlock)){
	x -= MovementSpeed;
	LastMoveKey = 2;
}
if(keyboard_check(ord("D")) && place_empty(x + 5, y, collisionBlock)){
	x += MovementSpeed;
	sprite_index = spr_Junjun_MoveRight;
	LastMoveKey = 1;
}
else if (keyboard_check(ord("A")))
{
	sprite_index = spr_Junjun_MoveLeft;
}
else if (keyboard_check(ord("W")))
{
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_MoveRight;
	}
	else
	{
		sprite_index = spr_Junjun_MoveLeft;
	}
}
else if (keyboard_check(ord("S")))
{
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_MoveRight;
	}
	else
	{
		sprite_index = spr_Junjun_MoveLeft;
	}
}
else
{
	if (LastMoveKey == 1)
	{
		sprite_index = spr_Junjun_IdleRight;
	}
	else if (LastMoveKey == 2)
	{
		sprite_index = spr_Junjun_IdleLeft;
	}
	
}

