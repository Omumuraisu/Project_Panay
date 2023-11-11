// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Knockback(spr_IdleLeft, spr_IdleRight){
	if(damageCooldown == 0){
		State = EnemyState.Follow
		if(x > Obj_Junjun.x){
			sprite_index = spr_IdleLeft;
		}
		else{
			sprite_index = spr_IdleRight;
		}
	}
	else{
		x += knockback_speed;
	}
}