/// @description if within distancce, follows JunJun
// otherwise, roams to a certain direction
i++;
if(i mod 300 == 0){
	_destination_x = round(random_range(-1, 1))*100 + x;
	_destination_y = round(random_range(-1, 1))*100 + y;
}

if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - Obj_Junjun.y)) > 540 && (x != _destination_x || y != _destination_y)){
	if(distance_to_point(_destination_x, _destination_y) >= 2.5){
		x += lengthdir_x(2.5, point_direction(x, y, _destination_x, _destination_y));
		y += lengthdir_y(2.5, point_direction(x, y, _destination_x, _destination_y));
	}
	else{
		x += lengthdir_x(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
		y += lengthdir_y(distance_to_point(_destination_x, _destination_y), point_direction(x, y, _destination_x, _destination_y));
	}
}