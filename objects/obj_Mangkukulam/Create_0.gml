/// @description Insert description here
/// @description Variables used later

HP = 8;
damageCooldown = 0;

//how fast/far the mangkukulam gets knokbacked
knockback_speed = 0;

//x coordinate of where the aswang will go to
xspeed = 2.5;
yspeed = 2.5;

//
attackFrameTimer = 0;

//determines state of aswang.
State = EnemyState.Idle;

//distance that activates state 2. i just don't want to see it coz it's a big boi.
combat_distance = sqrt(sqr(Obj_Junjun.sprite_height/2) + sqr(Obj_Junjun.sprite_width/2)) + sqrt(sqr(sprite_height/2) + sqr(sprite_width/2))