/// @description simple movement for JunJun


switch (State)
{
	case playerstate.Move: PlayerState_Move();
	break;
	
	case playerstate.Attack: PlayerState_Attack();
	break;
}


//attack cooldown
if (attackCooldown > 0) {
    attackCooldown--;
}

if (HPcooldown > 0) {
    HPcooldown--;
}
