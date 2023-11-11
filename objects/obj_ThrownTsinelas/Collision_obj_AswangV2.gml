/// @description Insert description here
// You can write your code in this editor

if(other.State != EnemyState.Dead){
	if(other.damageCooldown <= 0){
		if(x > other.x){
			with(other){
				HP--;
				sprite_index = spr_Aswang_DamagedRight;
				damageCooldown = 0.3*room_speed;
				knockback_speed = -sprite_width/(0.3*room_speed);
				State = EnemyState.Knockback;
			}
		}
		else{
		with(other){
			HP--;
			sprite_index = spr_Aswang_DamagedLeft;
			damageCooldown = 0.3*room_speed;
			knockback_speed = sprite_width/(0.3*room_speed);
			State = EnemyState.Knockback;
		}
	}
	instance_destroy();
	}
}