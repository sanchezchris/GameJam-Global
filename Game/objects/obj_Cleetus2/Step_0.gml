existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		inst_2FC2D6B8.sleep = true;
		inst_2FC2D6B8.sleepCooldown = 8;
		
		inst_4F4C548D.sleep = true;
		inst_4F4C548D.sleepCooldown = 40;
		inst_4F4C548D.vertical = 0;
		instance_destroy();
	}
}else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		inst_4F4C548D.sleep = true;
		inst_4F4C548D.sleepCooldown = 8;
		
		inst_2FC2D6B8.sleep = true;
		inst_2FC2D6B8.sleepCooldown = 40;
		inst_2FC2D6B8.vertical = 0;
		instance_destroy();
	}
}

if(existence <= 0){
	instance_destroy();
}