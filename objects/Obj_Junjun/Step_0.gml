
if(HP <= 0){
	//input code for when he die.
}

if(State != playerstate.Knockback){
	// Hold Attack
	if (mouse_check_button(mb_left) && State != playerstate.Attack && !isHoldAttacking && attackCooldown == 0 && !isThrowing && !inDialogue) 
		{
			mouseCooldown ++;
		}
	
	if (mouseCooldown > 15 && !isThrowing && !inDialogue)
		{
			State = playerstate.Hold_Attack;
			isHoldAttacking = true;
		}

	// Attack
	if (mouse_check_button_released(mb_left)) {
	    if (State != playerstate.Hold_Attack && attackCooldown == 0 && !isAttacking && mouseCooldown < 10 && !isThrowing && State != playerstate.Throw && !inDialogue)
		{
	        State = playerstate.Attack;
			isAttacking = true;
			attackCooldown = room_speed*0.3;
			mouseCooldown = 0;
        
	    }
	}
}
else{
	mouseCooldown = 0;
	isThrowing = false;
	holdTimer = 0;
	isHoldAttacking = false;
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
	case playerstate.Knockback:
		if(Damagecooldown <= 0){
			State = playerstate.Move;
			break;
		}
		if(sprite_index != spr_Junjun_DamagedLeft && sprite_index != spr_Junjun_DamagedRight){
			if(LastMoveKey = 1){
				sprite_index = spr_Junjun_DamagedRight;
			}
			else{
				sprite_index = spr_Junjun_DamagedLeft;
			}
		}
	//PlayerState_Knockback(damagedFromX, damagedFromY); preparatory for knockback
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

