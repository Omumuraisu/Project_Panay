/// @description Insert description here
/// @description Variables used later

HP = 8;
damageCooldown = 0;

//how fast/far the mangkukulam gets knokbacked
knockback_speed = 0;

//x coordinate of where the aswang will go to
xspeed = 2.5;
yspeed = 2.5;

//counts frames - temporary timer for roam/idle state
frame_timer = 0;

//determines state of aswang. 0 - roam, 1 - follow, 2 - attack
state = 0;

//distance that activates state 2. i just don't want to see it coz it's a big boi.
combat_distance = sqrt(sqr(Obj_Junjun.sprite_height/2) + sqr(Obj_Junjun.sprite_width/2)) + sqrt(sqr(sprite_height/2) + sqr(sprite_width/2))