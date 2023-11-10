
// Hold Attack
if (mouse_check_button(mb_left) && State != playerstate.Attack && !isHoldAttacking && attackCooldown == 0 && !isThrowing && !inDialogue && Weapon != 0) 
	{
		mouseCooldown ++;
	}
	
if (mouseCooldown > 15 && !isThrowing && !inDialogue && Weapon != 0)
	{
		State = playerstate.Hold_Attack;
		isHoldAttacking = true;
	}
	
// Attack
if (mouse_check_button_released(mb_left)) {
    if (State != playerstate.Hold_Attack && attackCooldown == 0 && !isAttacking && mouseCooldown < 10 && !isThrowing && State != playerstate.Throw && !inDialogue)
	{
		if (Weapon != 0){
        State = playerstate.Attack;
		isAttacking = true;
		attackCooldown = room_speed*0.3;
		mouseCooldown = 0;
		}
        
    }
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
	
	case playerstate.Throw: PlayerState_Throw();
	break;
	
	case playerstate.Talk: PlayerState_Talk();
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

