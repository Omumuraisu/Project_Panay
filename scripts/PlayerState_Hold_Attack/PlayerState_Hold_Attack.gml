// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Hold_Attack(){
	
	sprite_index = spr_Junjun_TsinelasThrowRight;
	
	if (mouse_check_button_released(mb_left))
	{
		State = playerstate.Move;
	}
}