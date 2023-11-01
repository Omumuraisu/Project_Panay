/// @description draws object to top left of viewport
if(Obj_Junjun.x <= 960){
	x = 49
}
else if(Obj_Junjun.x >= room_width - 960){
	x = room_width - 1920 + 49;
}
else{
	x = Obj_Junjun.x - 960 + 49;
}
if(Obj_Junjun.y <= 540){
	y = 30
}
else if(Obj_Junjun.y >= room_height - 540){
	y = room_height - 1080 + 30;
}
else{
	y = Obj_Junjun.y - 540 + 30;
}