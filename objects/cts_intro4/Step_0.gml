switch (eventStep){
	
case 1: 
	
	Obj_Junjun.sprite_index = spr_Junjun_trip;
	eventdelay ++;
	if (eventdelay == room_speed * 3){
		eventStep = 2;
		eventdelay = 0;
	}
	break;
	
case 2:
	guidraw = true;
	Obj_Junjun.sprite_index = spr_Junjun_trip;
		eventdelay ++;
	if (eventdelay == room_speed * 3){
		eventStep = 3;
		eventdelay = 0;
		guidraw = false;
	}
	break;
	
case 3: 
	Obj_Junjun.sprite_index = spr_Junjun_trip;
	eventdelay ++;
	if (eventdelay == room_speed * 3){
		eventStep = 4;
		eventdelay = 0;
		Obj_Junjun.sprite_index = spr_Junjun_IdleLeft;
	}
	break;
	
case 4:
	eventdelay ++;
	if (eventdelay == room_speed * 2){
	startDialogue("Intro4");
	instance_destroy();
	}
	break;
}