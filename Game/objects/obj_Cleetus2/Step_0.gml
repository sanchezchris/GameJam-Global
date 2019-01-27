existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		inst_4F4C548D.vspeed = 0;
		inst_4F4C548D.hspeed = 0;
		instance_destroy();
	}
}else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		inst_2FC2D6B8.vspeed = 0;
		inst_2FC2D6B8.hspeed = 0;
		instance_destroy();
	}
}

if(existence <= 0){
	instance_destroy();
}