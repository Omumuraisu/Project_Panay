// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_TakeDamage(spr_DamagedLeft, spr_DamagedRight){
	if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasLeft){
		if(damageCooldown == 0){
			HP--;
			damageCooldown = 0.3*room_speed;
			knockback_speed = - sprite_width/(0.3*room_speed);
			sprite_index = spr_DamagedRight;
			State = EnemyState.Knockback;
		}
	}
	else if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasRight){
		if(damageCooldown == 0){
			HP--;
			damageCooldown = 0.3*room_speed;
			knockback_speed = sprite_width/(0.3*room_speed);
			sprite_index = spr_DamagedLeft;
			State = EnemyState.Knockback;
		}
	}
}