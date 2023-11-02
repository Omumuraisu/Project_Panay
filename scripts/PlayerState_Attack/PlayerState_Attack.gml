// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
	if (LastMoveKey == 1) {
	if (sprite_index != spr_Junjun_TsinelasRight)
	{
		sprite_index = spr_Junjun_TsinelasRight;
		image_index = 0;
		// code dslist here
	}
	}
	else
	{
		if (sprite_index != spr_Junjun_TsinelasLeft)
	{
		sprite_index = spr_Junjun_TsinelasLeft;
		image_index = 0;
		// code dslist here
	}
	}
}