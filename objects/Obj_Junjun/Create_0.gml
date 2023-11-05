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
	Hold_Attack
}

attackCooldown = 0;
attackDuration = 0.5 * room_speed;
isAttacking = false;
isHoldAttacking = false;
mouseCooldown = 0;
