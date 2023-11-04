// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyState_Roam(){
	frame_timer++;
		if(frame_timer mod 300 == 0){
			_destination_direction = random(360);
			_destination_x = lengthdir_x(random_range(192, 384), _destination_direction) + x;
			_destination_y = lengthdir_y(random_range(192, 384), _destination_direction) + y;
			
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
			frame_timer = 0;
		}
		if(distance_to_point(_destination_x, _destination_y) >= 2.5){
			x += lengthdir_x(2.5, point_direction(x, y, _destination_x, _destination_y));
			y += lengthdir_y(2.5, point_direction(x, y, _destination_x, _destination_y));
		}		
		else{
			x += lengthdir_x(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
			y += lengthdir_y(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
		}
}