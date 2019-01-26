existence--;

x = x + (obj_Player.facing * spd) - 1;
y = y + grav;

if(place_meeting(x, y, obj_Wall)){
	instance_destroy();
}