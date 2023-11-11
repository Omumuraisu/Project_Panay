/// @description Please destroy the Projectile ffs.

if(sprite_index == spr_Junjun_TsinelasLeft || sprite_index == spr_Junjun_TsinelasRight){
	with(other){
		instance_destroy();
	}
}
else{
	HP--;
}