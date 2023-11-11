/// @description Insert description here
// You can write your code in this editor
if(HP <= 0){
	State = EnemyState.Dead;
}

else{
	if(damageCooldown > 0){
		damageCooldown--;
	}
	
	if(attackFrameTimer > 0){
		attackFrameTimer--;
	}
	
	if(distance_to_object(Obj_Junjun) <= 540 && State != EnemyState.Knockback){
		if(distance_to_object(Obj_Junjun) <= combat_distance){
			State = EnemyState.Attack;
		}
		else{
			State = EnemyState.Follow;
		}
	}
}

switch State{
	//(NOT FINISHED)
	case EnemyState.Attack:
		image_speed = 1;
		if(x > Obj_Junjun.x){
			sprite_index = spr_Mangkukulam_AttackLeft;
			if(floor(image_index) == 4){
				if(attackFrameTimer <= 0){
					instance_create_layer(x - sprite_width/2, y, layer, obj_Mangkukulam_projectile);
					attackFrameTimer = 0.5*room_speed;
				}
			}
		}
		else{
			sprite_index = spr_Mangkukulam_AttackRight;
			if(floor(image_index) == 4){
				if(attackFrameTimer <= 0){
					instance_create_layer(x + sprite_width/2, y, layer, obj_Mangkukulam_projectile);
					attackFrameTimer = 0.3*room_speed;
				}
			}
		}
		break;
	//(FINISHED) state when HP <= 0.
	case EnemyState.Dead:
		sprite_index = spr_Mangkukulam_Dft;
		break;
	//(FINISHED) state when moves towards player.
	case EnemyState.Follow:
		EnemyState_Follow(spr_Mangkukulam_MoveLeft, spr_Mangkukulam_MoveRight);
		break;
	//(NOT FINISHED)
	case EnemyState.Idle:
		break;
	//(FINISHED) state when got hit.
	case EnemyState.Knockback:
		EnemyState_Knockback(spr_Mangkukulam_IdleLeft, spr_Mangkukulam_IdleRight)
		break;
	//(NOT FINISHED)
	case EnemyState.Roam:
		break;
}