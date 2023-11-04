/// @description Attack
if (mouse_check_button_pressed(mb_left)) {
    if (State != playerstate.Attack && attackCooldown == 0) 
	{
        State = playerstate.Attack;
		attackCooldown = room_speed*0.3;
        
    }
}
