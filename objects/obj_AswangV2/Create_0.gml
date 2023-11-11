/// @description Variables used later

//hitpoints
HP = 8;
damageCooldown = 0;

//how fast/far the Aswang gets knokbacked
knockback_speed = 0;

xspeed = 2.5;
yspeed = 2.5;
_destination_direction = 0;

//counts frames - temporary timer for roam/idle state
frame_timer = 0;

attackFrameTimer = 0;

//determines state of aswang.
enum EnemyState{
	Idle,
	Roam,
	Follow,
	Attack,
	Knockback,
	Dead
}
State = EnemyState.Idle;

//distance that activates state 2. i just don't want to see it coz it's a big boi.
combat_distance = sqrt(sqr(Obj_Junjun.sprite_height/2) + sqr(Obj_Junjun.sprite_width/2)) + sqrt(sqr(sprite_height/2) + sqr(sprite_width/2))