existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D) && (character !=3)){
		
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		knockUp = inst_4F4C548D.hp * yModifier;
		inst_4F4C548D.y = inst_4F4C548D.y - knockUp;
		distance = modifier * inst_4F4C548D.hp;
		inst_4F4C548D.hspeed = distance * facing;
		inst_4F4C548D.hit = true;
	}
	
	if(place_meeting(x, y, inst_4F4C548D) && (character == 3)){
		
		if(inst_4F4C548D.slowDebuff < 3){
			inst_4F4C548D.slowDebuff++;
			inst_4F4C548D.slowDebuffCooldown = 10;
		}
		
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		knockUp = inst_4F4C548D.hp * yModifier;
		inst_4F4C548D.y = inst_4F4C548D.y - knockUp;
		distance = modifier * inst_4F4C548D.hp;
		inst_4F4C548D.hspeed = distance * facing;
		inst_4F4C548D.hit = true;
	}
	
	
	
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8) && (character != 3)){
		
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		knockUp = inst_2FC2D6B8.hp * yModifier;
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - knockUp;
		distance = modifier * inst_2FC2D6B8.hp;
		inst_2FC2D6B8.hspeed = distance * facing;
		inst_4F4C548D.hit = true;
	}
	
	if(place_meeting(x, y, inst_2FC2D6B8) && (character == 3)){
		
		if(inst_2FC2D6B8.slowDebuff < 3){
			inst_2FC2D6B8.slowDebuff++;
			inst_2FC2D6B8.slowDebuffCooldown = 10;
		}
		
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		knockUp = inst_2FC2D6B8.hp * yModifier;
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - knockUp;
		distance = modifier * inst_2FC2D6B8.hp;
		inst_2FC2D6B8.hspeed = distance * facing;
		inst_4F4C548D.hit = true;
	}
	
	
	
	
	
	
}

if(existence <= 0){
	instance_destroy();
}