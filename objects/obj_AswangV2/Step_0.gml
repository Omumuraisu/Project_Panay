/// @description Aswang's movement pattern

//changes state depending on conditions
if(damageCooldown > 0){
	damageCooldown--;
}

if(HP <= 0){
	State = EnemyState.Dead;
}

if(distance_to_object(Obj_Junjun) <= 540 && State != EnemyState.Knockback && State != EnemyState.Attack && State != EnemyState.Dead){
	if(distance_to_object(Obj_Junjun) <= combat_distance){
		State = EnemyState.Attack;
	}
	else{
		State = EnemyState.Follow;
	}
}

switch State{
	case EnemyState.Attack:
		//EnemyState_Attack();
		image_speed = 0.5;
		if(sprite_index == spr_Aswang_AttackLeft || sprite_index == spr_Aswang_AttackRight){
			if(attackFrameTimer > 4){
				attackFrameTimer = 0;
				State = EnemyState.Follow;
			}
			else{
				x += (2*combat_distance/5)*cos(_destination_direction);
				y += (2*combat_distance/5)*sin(_destination_direction);
				if(place_meeting(x, y, Obj_Junjun)){
					with(Obj_Junjun){
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
						}
					}
				}
				attackFrameTimer++;
			}
		}
		else if(sprite_index != spr_Aswang_PrettackLeft && sprite_index != spr_Aswang_PrettackRight){
			if(x > Obj_Junjun.x){
				sprite_index = spr_Aswang_PrettackLeft;
			}
			else{
				sprite_index = spr_Aswang_PrettackRight;
			}
			image_index = 0;
			_destination_direction = arctan2(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y), (Obj_Junjun.x - x));
		}
		else if(round(image_index) == 2){
			if(x > Obj_Junjun.x){
				sprite_index = spr_Aswang_AttackLeft;
				//_destination_direction = arctan2(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y), (Obj_Junjun.x - x));
				//show_debug_message(_destination_direction);
			}
			else{
				sprite_index = spr_Aswang_AttackRight;
				//_destination_direction = arctan2(((Obj_Junjun.y - Obj_Junjun.sprite_height/2) - y), (Obj_Junjun.x) - x);
				//show_debug_message(_destination_direction);
			}
		}
		show_debug_message(image_index);
		break;
	case EnemyState.Follow:
		EnemyState_Follow(spr_Aswang_WalkLeft, spr_Aswang_WalkRight);
		break;
	case EnemyState.Knockback:
		EnemyState_Knockback(spr_Aswang_IdleLeft, spr_Aswang_IdleLeft)
		break;
	//case EnemyState.Roam:
		//EnemyState_Roam();
		//break;
	case EnemyState.Dead:
		sprite_index = spr_Aswang_Dft;
		break;
}