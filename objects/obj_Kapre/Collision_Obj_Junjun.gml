/// @description junjun wat are u doin

if(Obj_Junjun.sprite_index == spr_Junjun_TsinelasLeft || Obj_Junjun.sprite_index == spr_Junjun_TsinelasRight){
	if(damageCooldown == 0){
		HP--;
		damageCooldown = 0.5*room_speed;
		EnemyKnockback();
	}
}
else{
	if(Obj_Junjun.Damagecooldown == 0){
		Obj_Junjun.HP--;
		Obj_Junjun.Damagecooldown = 0.3*room_speed;
		PlayerKnockback();
	}
}