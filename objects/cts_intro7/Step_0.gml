switch (eventStep) {
	
	case 1:
	eventDelay++;
	if (eventDelay == room_speed * 1) {
		eventDelay = 0;
		instance_create_layer(1440, 1440, "Instances", obj_Aswang);
		eventStep = 2;
	}
	break;
	
	case 2:
	eventDelay ++;
	if (eventDelay == room_speed * 1){
	eventDelay = 0;
	eventStep = 3;
	}
	break;
	
	case 3:
	eventDelay ++;
	obj_Aswang.sprite_index = spr_Aswang_WalkLeft;
	obj_Aswang.y -= 2;
	if (eventDelay == room_speed * 2.5){
		instance_create_layer(1440,384,"Instances", npc_Albularyow);
		eventDelay = 0;
		eventStep = 4;
	}
	break;
	
	case 4:
	eventDelay++;
	if (eventDelay == room_speed * 0.5) {
		obj_Aswang.sprite_index = spr_Kapre_Fire;
		eventDelay = 0;
		eventStep = 5;
	}
	break;
	
	case 5:
	eventDelay ++;
	if (eventDelay == room_speed * 1.5){
		eventDelay = 0;
		instance_destroy(obj_Aswang);
		eventStep = 6;
	}
	break;
	
	case 6:
	eventDelay ++;
	if (eventDelay == room_speed * 1.5){
		eventDelay = 0;
		eventStep = 7;
	}
	break;
	
	case 7:
	startDialogue("Intro7");
	break;
	
	
	
}

