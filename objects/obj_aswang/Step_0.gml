/// @description Aswang's movement pattern


//changes state depending on conditions
if(HP <= 0){
	instance_destroy();
}
if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance*2){
	if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y -  (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= 1.5*combat_distance){
		state = 2;
	}
	frame_timer++;
}
else if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y -  (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= 540){
	state = 1;
}
else{
	state = 0;
}

//defines what aswang does in each state
switch state{
	case 0: //roaming state
		EnemyState_Roam();
		break;
	case 1: //following state
		EnemyState_Follow();
		break;
	case 2: //combat state
		if(frame_timer > 124){
			frame_timer = 0;
		}
		else if(frame_timer >= 120){
			x += lengthdir_x(2*combat_distance/5, _destination_direction);
			y += lengthdir_y(2*combat_distance/5, _destination_direction);
		}
		else if(frame_timer < 104){
			_destination_direction = point_direction(x, y, Obj_Junjun.x,  (Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		}
		break;
}