/// @description Insert description here
// You can write your code in this editor
if(HP <= 0){
	State = EnemyState.Dead;
}

else{
	if(damageCooldown > 0){
		damageCooldown--;
	}
	
	if(distance_to_object(Obj_Junjun) <= 540 && State != EnemyState.Knockback){
		if(distance_to_object(Obj_Junjun) <= 3*combat_distance){
			State = EnemyState.Attack;
		}
		else{
			State = EnemyState.Follow;
		}
	}
}

switch State{
	case EnemyState.Attack:
		break;
	//(FINISHED) state when HP <= 0.
	case EnemyState.Dead:
		sprite_index = spr_Mangkukulam_Dft;
		break;
	case EnemyState.Follow:
		break;
	case EnemyState.Idle:
		break;
	case EnemyState.Knockback:
		EnemyState_Knockback(spr_Mangkukulam_IdleLeft, spr_Mangkukulam_IdleRight)
		break;
	case EnemyState.Roam:
		break;
}