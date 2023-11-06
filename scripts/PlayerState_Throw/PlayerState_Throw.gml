// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Throw(){
	if (throwDirection == 0) {
	if (sprite_index != spr_Junjun_ThrowRight)
	{
		sprite_index = spr_Junjun_ThrowRight;
		image_speed = 1;
		image_index = 0;
		// code projectile here
	}
	}
	else
	{
		if (sprite_index != spr_Junjun_ThrowLeft)
	{
		sprite_index = spr_Junjun_ThrowLeft;
		image_speed = 1;
		image_index = 0;
		// code projectile
	}
	}
}
