/// @description if within distancce, follows JunJun
// otherwise, roams to a certain direction


//changes state depending on conditions
if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance*2){
	if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y -  (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance){
		state = 2;
		_destination_x = 2*distance_to_point(Obj_Junjun.x,  (Obj_Junjun.y - Obj_Junjun.sprite_height/2));
	}
	i++;
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
		i++;
		if(i mod 300 == 0){
			_destination_x = round(random_range(-1, 1))*100 + x;
			_destination_y = round(random_range(-1, 1))*100 + y;
			
			if (_destination_x < 0){
				_destination_x = sprite_width/2;
			}
			else if(_destination_x > room_width){
				_destination_x = room_width - sprite_width/2;
			}
			if (_destination_y < 0){
				_destination_y = sprite_height/2;
			}
			else if(_destination_y > room_height){
				_destination_y = room_height - sprite_height;
			}
			i = 0;
		}
		if(distance_to_point(_destination_x, _destination_y) >= 2.5){
			x += lengthdir_x(2.5, point_direction(x, y, _destination_x, _destination_y));
			y += lengthdir_y(2.5, point_direction(x, y, _destination_x, _destination_y));
		}		
		else{
			x += lengthdir_x(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
			y += lengthdir_y(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
		}
		break;
	case 1: //following state
		x += lengthdir_x(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		y += lengthdir_y(2.5, point_direction(x, y, Obj_Junjun.x, Obj_Junjun.y - Obj_Junjun.sprite_height/2));
		i = 0;
		break;
	case 2: //combat state
		if(i == 180){
			x += lengthdir_x(_destination_x, point_direction(x, y, Obj_Junjun.x,  (Obj_Junjun.y - Obj_Junjun.sprite_height/2)));
			y += lengthdir_y(_destination_x, point_direction(x, y, Obj_Junjun.x,  (Obj_Junjun.y - Obj_Junjun.sprite_height/2)));
			i = 0;
		}
		break;
}