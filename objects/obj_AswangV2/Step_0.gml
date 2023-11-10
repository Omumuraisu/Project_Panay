/// @description Aswang's movement pattern

//changes state depending on conditions
if(HP <= 0){
	instance_destroy();
}

if(damageCooldown > 0){
	damageCooldown--;
}

if(frame_timer > 0){
	frame_timer--;
}

if(distance_to_object(Obj_Junjun) <= 540 && State != EnemyState.Knockback && State != EnemyState.Attack){
	if(distance_to_object(Obj_Junjun) <= combat_distance){
		State = EnemyState.Attack;
		frame_timer = 0.3*room_speed;
	}
	else{
		State = EnemyState.Follow;
	}
}

switch State{
	case EnemyState.Attack:
		//EnemyState_Attack();
		image_speed = 1;
		if(sprite_index == spr_Aswang_AttackLeft){
			if(attackFrameTimer > 5){
				attackFrameTimer = 0;
				State = EnemyState.Follow;
			}
			else if(attackFrameTimer >= 1){
				x += lengthdir_x(2*combat_distance/5, _destination_direction);
				y += lengthdir_y(2*combat_distance/5, _destination_direction);
			}
			else if(attackFrameTimer == 0){
				_destination_direction = point_direction(x, y, Obj_Junjun.x,(Obj_Junjun.y - Obj_Junjun.sprite_height/2));
			}
			attackFrameTimer++;
		}
		else if(sprite_index == spr_Aswang_AttackRight){
			if(attackFrameTimer > 5){
				attackFrameTimer = 0;
				State = EnemyState.Follow;
			}
			else if(attackFrameTimer >= 1){
				x -= lengthdir_x(2*combat_distance/5, _destination_direction);
				y -= lengthdir_y(2*combat_distance/5, _destination_direction);
			}
			else if(attackFrameTimer == 0){
				_destination_direction = point_direction(x, y, Obj_Junjun.x,(Obj_Junjun.y - Obj_Junjun.sprite_height/2));
			}
			attackFrameTimer++;
		}
		else if(sprite_index != spr_Aswang_PrettackLeft && sprite_index != spr_Aswang_PrettackRight){
			if(x > Obj_Junjun.x){
				sprite_index = spr_Aswang_PrettackLeft;
			}
			else{
				sprite_index = spr_Aswang_PrettackRight;
			}
		}
		else if(round(image_index) == 2){
			if(x > Obj_Junjun.x){
				sprite_index = spr_Aswang_AttackLeft;
			}
			else{
				sprite_index = spr_Aswang_AttackRight;
			}
			show_debug_message("no");
		}
		break;
	case EnemyState.Follow:
		EnemyState_Follow();
		break;
	case EnemyState.Knockback:
		if(damageCooldown == 0){
			State = EnemyState.Follow
			if(x > Obj_Junjun.x){
				sprite_index = spr_Aswang_IdleLeft;
			}
			else{
				sprite_index = spr_Aswang_IdleRight;
			}
		}
		else{
			EnemyState_Knockback();
		}
		break;
	//case EnemyState.Roam:
		//EnemyState_Roam();
		//break;
}