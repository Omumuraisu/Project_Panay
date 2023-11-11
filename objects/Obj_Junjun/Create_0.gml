//Movement
LastMoveKey = 1; //checking last movement key
MovementSpeed = 8;

//preparation variables if knockback will be implemented.
knockbackspeed = sprite_height;
damagedFromX = 0;
damagedFromY = 0;

//HP
HP = 4;
HPMAX = 4;
Damagecooldown = 0

Mana = 3;
ManaMAX = 3;

//Weapon/Charm
Weapon = 1 // 1 = slipper
Charm = 1// 1 = shockwave

//states
State = playerstate.Move;

enum playerstate
{
	Move,
	Attack,
	Hold_Attack,
	Throw,
	Talk,
	Knockback
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
