/// @description if within distancce, follows JunJun
// otherwise, roams to a certain direction


//changes state depending on conditions
if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance*2){
	if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y -  (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance){
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
		x += lengthdir_x(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		y += lengthdir_y(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		frame_timer = 0;
		_destination_x = x;
		_destination_y = y;
		break;
	case 2: //combat state
		if(frame_timer > 129){
			frame_timer = 0;
		}
		else if(frame_timer >= 120){
			x += lengthdir_x(2*combat_distance/10, _destination_direction);
			y += lengthdir_y(2*combat_distance/10, _destination_direction);
		}
		else if(frame_timer < 104){
			_destination_direction = point_direction(x, y, Obj_Junjun.x,  (Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		}
		break;
}