// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Knockback(EnemyX, EnemyY){
	x += cos(arctan((EnemyY - y)/(EnemyX - x)));
	y += sin(arctan((EnemyY - y)/(EnemyX - x)));
}