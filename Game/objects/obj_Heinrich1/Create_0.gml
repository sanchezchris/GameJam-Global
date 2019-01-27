existence = 50;
spd = 15;
facing = 0;
damage = 5;
distance = 1;
modifier = 1;

player = global.player;
facing = global.facing;

if (facing == -1){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}