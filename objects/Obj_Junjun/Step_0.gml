/// @description simple movement for JunJun
<<<<<<< HEAD

	
switch (State)
{
	case playerstate.Move: PlayerState_Move();
	break;
	
	case playerstate.Attack: PlayerState_Attack();
	break;
	
=======
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
if(keyboard_check(ord("W")) && place_empty(x, y - 5, collisionBlock)){
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
if(keyboard_check(ord("S")) && place_empty(x, y + 5, collisionBlock)){
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
if(keyboard_check(ord("A")) && place_empty(x - 5, y, collisionBlock)){
	x -= MovementSpeed;
	LastMoveKey = 2;
	sprite_index = spr_Junjun_MoveLeft;
}
if(keyboard_check(ord("D")) && place_empty(x + 5, y, collisionBlock)){
	x += MovementSpeed;
	sprite_index = spr_Junjun_MoveRight;
	LastMoveKey = 1;
>>>>>>> 1f265c5ffc3da855a2aebd527801ec187ae7a9c4
}