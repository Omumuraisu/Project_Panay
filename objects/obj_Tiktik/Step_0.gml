if(damageCooldown > 0){
	damageCooldown--;
}

if(HP <= 0){
	instance_destroy();
}

i++;
x = circle_center_x - cos(i/15)*radius;
y = circle_center_y - sin(i/15)*radius;