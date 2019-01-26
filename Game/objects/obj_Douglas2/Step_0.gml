
if(place_meeting(x, y, obj_Wall)){
	
	vspeed = 0;
	hspeed = 0;

	sprite_index = spr_BombExplosion;
	existance--;
	if(existance <=0){
		instance_destroy();
	}
}
else{
	x = x + (facing * spd) - (5 *facing);
	vspeed = vspeed + grav;
}

