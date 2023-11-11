switch (eventStep) {
	
	case 1: 
	camera_set_view_target(view_camera[0], noone);
	Obj_Junjun.State = playerstate.Talk;
	instance_create_layer(1152, 2500, "Instances", obj_AswangV2);
	obj_AswangV2.State = EnemyState.Pause;
	eventStep = 2;
	break;
	
	case 2:
	eventdelay++;
	camy += 8;
	camera_set_view_pos(view_camera[0],0,camy);
	if (eventdelay == room_speed * 2){
		eventdelay = 0;
		eventStep = 3;
	}
	break;
	
	case 3:
	obj_AswangV2.sprite_index = spr_Aswang_WalkLeft;
	eventdelay++;
	obj_AswangV2.y -=5;
	if (eventdelay == room_speed * 2){
		obj_AswangV2.sprite_index = spr_Aswang_IdleLeft;
		eventStep = 4;
		eventdelay = 0;
	}
	break;
	
	case 4:
	startDialogue("Intro6A");
	Obj_Junjun.inDialogue = true;
	eventStep = 5;
	break;
	
	case 5:
	if (Obj_Junjun.inDialogue = false) {
		eventStep = 6;
		Obj_Junjun.State = playerstate.Talk;
	}
	break;
	
	case 6: 
	obj_AswangV2.sprite_index = spr_Aswang_WalkLeft;
	eventdelay++;
	obj_AswangV2.y -=6;
	if (eventdelay == room_speed * 1){
		eventStep = 7;
		eventdelay = 0;
	}
	break;
	
	case 7: 
	eventdelay++;
	camy -= 16;
	obj_AswangV2.y -=6;
	camera_set_view_pos(view_camera[0],0,camy);
	if (eventdelay == room_speed * 1){
		camera_set_view_target(view_camera[0], Obj_Junjun);
		eventStep = 8;
		eventdelay = 0;
		Obj_Junjun.State = playerstate.Move
		Obj_Junjun.storyState = 3;
	}
	break;

}

