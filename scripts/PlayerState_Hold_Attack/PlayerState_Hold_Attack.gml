// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Hold_Attack(){
	
holdTimer ++;

if (mouse_x > x) 
{	
	sprite_index = spr_Junjun_TsinelasThrowRight;
	image_speed = 0;
	throwDirection = 0;
	if (holdTimer <= 30)
		{
			image_index = 0;
		}
		if (holdTimer > 30 && holdTimer <= 60)
		{
			image_index = 1;
		}
		if (holdTimer > 60)
		{
			image_index = 2;
		}
}
else if (mouse_x < x) 
{	
	sprite_index = spr_Junjun_TsinelasThrowLeft;
	image_speed = 0;
	throwDirection = 1;
	if (holdTimer <= 30)
		{
			image_index = 0;
		}
		if (holdTimer > 30 && holdTimer <= 60)
		{
			image_index = 1;
		}
		if (holdTimer > 60)
		{
			image_index = 2;
		}
}

	
	if (mouse_check_button_released(mb_left))
	{
		State = playerstate.Throw;
		isThrowing = true;
		holdTimer = 0;
		mouseCooldown = 0;
		isHoldAttacking = false;
		if(x > mouse_x){
			instance_create_depth(x - 30, y - sprite_height/2, depth, obj_ThrownTsinelas);
		}
		else{
			instance_create_depth(x + 30, y - sprite_height/2, depth, obj_ThrownTsinelas);
		}
	}
}

