// Attack
if (mouse_check_button_pressed(mb_left)) {
    if (State != playerstate.Hold_Attack && attackCooldown == 0 && !isAttacking) 
	{
        State = playerstate.Attack;
		isAttacking = true;
		attackCooldown = room_speed*0.4;
        
    }
}

// Hold Attack
if (mouse_check_button(mb_left) && State != playerstate.Attack && attackCooldown == 0) 
	{
	  State = playerstate.Hold_Attack;
	}
	


//states
switch (State)
{
	case playerstate.Move: PlayerState_Move();
	break;
	
	case playerstate.Attack: PlayerState_Attack();
	break;
	
	case playerstate.Hold_Attack: PlayerState_Hold_Attack();
	break;
}


//Attack Cooldown
if (attackCooldown > 0) {
    attackCooldown--;
    if (attackCooldown == 0) {
        isAttacking = false; // Reset the attack state when the cooldown is over
    }
}

//Damage Cooldown
if (Damagecooldown > 0) {
    Damagecooldown--;
}
