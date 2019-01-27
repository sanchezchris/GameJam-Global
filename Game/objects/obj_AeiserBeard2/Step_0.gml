existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		knockUp = inst_4F4C548D.hp * yModifier;
		inst_4F4C548D.y = inst_4F4C548D.y - knockUp;
		distance = modifier * inst_4F4C548D.hp;
		inst_4F4C548D.hspeed = distance * facing;
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		knockUp = inst_2FC2D6B8.hp * yModifier;
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - 10;
		distance = modifier * inst_2FC2D6B8.hp;
		inst_2FC2D6B8.hspeed = distance * facing;
	}
}

if(existence <= 0){
	instance_destroy();
}