/// @description Insert description here
// You can write your code in this editor


if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasLeft || Obj_Junjun.sprite_index == spr_Junjun_TsinelasRight){
	if(damageCooldown == 0){
		HP--;
		damageCooldown = 0.3*room_speed;
		EnemyKnockback();
	}
}