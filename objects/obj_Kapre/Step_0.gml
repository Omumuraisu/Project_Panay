/// @description set key O to spawn kapre btw

if(HP <= 0){
	instance_destroy();
	//state = 0;
}

if(damageCooldown > 0){
	damageCooldown--;
}

if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y - (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= combat_distance*2){
	if(sqrt(sqr(x - Obj_Junjun.x) + sqr(y -  (Obj_Junjun.y - Obj_Junjun.sprite_height/2))) <= 1.5*combat_distance){
		state = 2;
	}
	frame_timer++;
}
else {
	state = 1; //he keeps on following..?
}

switch state {
	case 0: //stop pare
		speed = 0;
		break;
		
	case 1: //go pare
		if(frame_timer == 150) {
			attack_form = irandom_range(1, 3);
			switch attack_form { //0 is kapre no attack.. 1 is attack 1, 2 is attack 2, and 3 is attack 3
				case 1:
					speed = 0; //tested something so i set it dnay to this- remove lng once coding for da attacks.
					break;
				case 2:
					speed = 0;
					break;
				case 3:
					speed = 0;
					break;
			}
			attack_form = 0;
			frame_timer = 0;
		}
		else {
			attack_form = 0;
			EnemyState_Follow();
		}
		frame_timer++;
		break;
		
	case 2: //rape pare
		
		break;
}