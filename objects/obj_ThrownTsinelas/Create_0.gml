/// @description Insert description here
// You can write your code in this editor

if(x < mouse_x){
	targetDirection = arctan((mouse_y - y)/(mouse_x - x));
}
else{
	targetDirection = arctan2((mouse_y - y), (mouse_x - x));
}