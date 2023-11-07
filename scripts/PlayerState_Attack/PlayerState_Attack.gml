// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
	
	if (mouse_x > x) {
		if (sprite_index != spr_Junjun_TsinelasRight)
		{
			sprite_index = spr_Junjun_TsinelasRight;
			image_index = 0;
			// code dslist here
		}
		mask_index = spr_Junjun_TsinelasRightHB;
	}
	else
	{
		if (sprite_index != spr_Junjun_TsinelasLeft)
		{
			sprite_index = spr_Junjun_TsinelasLeft;
			image_index = 0;
			// code dslist 
		}
		mask_index = spr_Junjun_TsinelasLeftHB;
	}
}