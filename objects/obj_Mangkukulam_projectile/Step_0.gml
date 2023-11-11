/// @description Insert description here
// You can write your code in this editor

if(summoning_sickness <= 0){
	if(sprite_index != spr_MangkuProj2){
		sprite_index = spr_MangkuProj2;
		image_angle = -180*targetDirection/pi;
	}
	if(place_meeting(x, y, Obj_Junjun)){
		if(Obj_Junjun.sprite_index != spr_Junjun_TsinelasLeft && Obj_Junjun.sprite_index != spr_Junjun_TsinelasLeft){
			if(Obj_Junjun.Damagecooldown <= 0){
				Obj_Junjun.HP--;
				//bottom are preparatory for knockback
				Obj_Junjun.State = playerstate.Knockback;
				Obj_Junjun.Damagecooldown = 0.3*room_speed;
				with(other){
					isThrowing = false;
					holdTimer = 0;
					mouseCooldown = 0;
					isHoldAttacking = false;
				}
				//Obj_Junjun.damagedFromX = x;
				//Obj_Junjun.damagedFromY = y;
			}
			instance_destroy();
		}
		else{
			instance_destroy();
		}
	}
	else{
		x += 10*cos(targetDirection);
		y += 10*sin(targetDirection);
	}
}
else if(summoning_sickness > 5){
	if(x < Obj_Junjun.x){
		targetDirection = arctan(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y)/(Obj_Junjun.x - x));
	}
	else{
		targetDirection = arctan2(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y), (Obj_Junjun.x - x));
	}
	summoning_sickness--;
}
else{
	summoning_sickness--;
}
