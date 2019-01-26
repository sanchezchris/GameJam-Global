existence--;

x = x + (facing * spd);

if(existence <= 0){
	instance_destroy();
}