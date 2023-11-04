//Movement
LastMoveKey = 1; //checking last movement key
MovementSpeed = 8;


//HP
HP = 4;
HPMAX = 4;

//states
State = playerstate.Move;

enum playerstate
{
	Move,
	Attack,
	Hold_Attack
}

attackCooldown = 0;
