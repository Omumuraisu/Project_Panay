if (place_meeting(x, y, Obj_Junjun) && Obj_Junjun.storyState == 3) {
            Obj_Junjun.State = playerstate.Talk;
			cts_intro7.eventStep = 1;
			instance_destroy();
}



