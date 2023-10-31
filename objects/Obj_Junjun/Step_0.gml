/// @description simple movement for JunJun
if(keyboard_check(vk_up) && place_empty(x, y - 5, collisionBlock)){
	y -= 8;
}
if(keyboard_check(vk_down) && place_empty(x, y + 5, collisionBlock)){
	y += 8;
}
if(keyboard_check(vk_left) && place_empty(x - 5, y, collisionBlock)){
	x -= 8;
}
if(keyboard_check(vk_right) && place_empty(x + 5, y, collisionBlock)){
	x += 8;
}