existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
	}
	else if(distance_to_object(inst_4F4C548D) < 500){
		
		inst_4F4C548D.pullDir = 1;
		inst_4F4C548D.pullTo = true;
		inst_4F4C548D.PullToCooldown = 4;
	}
	
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
	}
	else if(distance_to_object(inst_2FC2D6B8) < 500){
		
		inst_2FC2D6B8.pullDir = -1;
		inst_2FC2D6B8.pullTo = true;
		inst_2FC2D6B8.PullToCooldown = 4;
	}
}

if(existence <= 0){
	instance_destroy();
}