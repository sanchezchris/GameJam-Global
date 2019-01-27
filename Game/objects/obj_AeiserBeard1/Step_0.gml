existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		if(inst_2FC2D6B8.special1Damage > 30){
			inst_2FC2D6B8.special1Damage = 40;
		}
		
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		knockUp = inst_4F4C548D.hp * yModifier;
		inst_4F4C548D.y = inst_4F4C548D.y - knockUp;
		distance = (modifier * inst_4F4C548D.hp) + inst_2FC2D6B8.special1Damage;
		inst_4F4C548D.hspeed = distance * facing;
		inst_4F4C548D.hit = true;
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		if(inst_2FC2D6B8.special1Damage > 30){
			inst_2FC2D6B8.special1Damage = 40;
		}
		
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		knockUp = inst_2FC2D6B8.hp * yModifier;
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - knockUp;
		distance = (modifier * inst_2FC2D6B8.hp) + inst_4F4C548D.special1Damage;
		inst_2FC2D6B8.hspeed = distance * facing;
		inst_2FC2D6B8.hit = true;
	}
}

if(existence <= 0){
	instance_destroy();
}