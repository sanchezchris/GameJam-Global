existence = 50;
spd = 15;
facing = 0;
damage = 1;
distance = 1;
modifier = 0.25;
knockUp = 5;
yModifier = 0.5;

player = global.player;
facing = global.facing;

if (facing == -1){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}