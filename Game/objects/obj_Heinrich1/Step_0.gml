existence--;

x = x + (obj_Player.facing * spd);

if(existence <= 0){
	instance_destroy();
}