
x = x + (facing * spd) - (5 *facing);
vspeed = vspeed + grav;

if(place_meeting(x, y, obj_Wall)){
	instance_destroy();
}

