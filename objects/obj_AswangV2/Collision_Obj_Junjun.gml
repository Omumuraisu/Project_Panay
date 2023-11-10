/// @description Insert description here
// You can write your code in this editor


if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasLeft){
	if(damageCooldown == 0){
		HP--;
		damageCooldown = 0.3*room_speed;
		knockback_speed = - sprite_width/(0.3*room_speed);
		sprite_index = spr_Aswang_DamagedRight;
		State = EnemyState.Knockback;
	}
}
else if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasRight){
	if(damageCooldown == 0){
		HP--;
		damageCooldown = 0.3*room_speed;
		knockback_speed = sprite_width/(0.3*room_speed);
		sprite_index = spr_Aswang_DamagedLeft;
		State = EnemyState.Knockback;
	}
}