//Movement
LastMoveKey = 1; //checking last movement key
MovementSpeed = 8;


//HP
HP = 4;
HPMAX = 4;
Damagecooldown = 0

//states
State = playerstate.Move;

enum playerstate
{
	Move,
	Attack,
	Hold_Attack,
	Throw,
	Talk,
}

hitByAttack = ds_list_create();

// attack
attackCooldown = 0;
isAttacking = false;
isHoldAttacking = false;
mouseCooldown = 0;

// hold attack
holdTimer = 0;
isThrowing = false;
throwDirection = 0;

//dialogue
inDialogue = false;
