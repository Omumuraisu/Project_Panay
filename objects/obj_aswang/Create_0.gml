/// @description Variables used later

//x coordinate of where the aswang will roam to
_destination_x = x;

//y coordinate of where the aswang will roam to
_destination_y = y;

//counts frames - temporary timeer for roam/idle state
i = 0;

//determines state of aswang. 0 - roam, 1 - follow, 2 - attack
state = 0;

//distance that activates state 2. i just don't want to see it coz it's a big bpi.
combat_distance = sqrt(sqr(Obj_Junjun.sprite_height/2) + sqr(Obj_Junjun.sprite_width/2)) + sqrt(sqr(sprite_height/2) + sqr(sprite_width/2))

dash_direction = 0;