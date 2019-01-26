existence = 30;
spd = 10;
facing = 0;

if(obj_Player.player == 1){
	facing = obj_Player.facing1;
}
else{
	facing = obj_Player.facing2;
}

if (facing == -1){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}