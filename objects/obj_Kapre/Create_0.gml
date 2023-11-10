/// @description bimbimbambam

 HP = 30;
damageCooldown = 0;
//x coordinate of where the aswang will go to
_destination_x = x;
//y coordinate of where the aswang will go to
_destination_y = y;
//direction of where the aswang will go to
_destination_direction = 0;
//counts frames - temporary timer for roam/idle state
frame_timer = 0;
state = 0; //determines state of aswang. 0 - roam, 1 - follow, 2 - attack
combat_distance = sqrt(sqr(Obj_Junjun.sprite_height/2) + sqr(Obj_Junjun.sprite_width/2)) + sqrt(sqr(sprite_height/2) + sqr(sprite_width/2))
attack_form = 0;