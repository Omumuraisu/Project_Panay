switch (eventStep) {
	
	case 1: 
	Obj_Junjun.State = playerstate.Talk;
	instance_create_layer(1152, 2500, "cutscene", obj_AswangV2);
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
	obj_AswangV2.y -=8;
	if (eventdelay == room_speed * 2){
		eventStep = 3;
		eventStep = 0;
	}
	break;
}


