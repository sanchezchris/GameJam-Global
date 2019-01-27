existence--;

x = x + (facing * spd);

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		if(inst_4F4C548D.flameDebuff < 3){
			inst_4F4C548D.flameDebuff++;
			inst_4F4C548D.flameDebuffCooldown = 70;
		}
		
		inst_4F4C548D.y = inst_4F4C548D.y - 10;
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		distance = modifier * inst_4F4C548D.hp;
		inst_4F4C548D.hspeed = distance * facing;
		instance_destroy();
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		if(inst_4F4C548D.flameDebuff < 3){
			inst_4F4C548D.flameDebuff++;
			inst_4F4C548D.flameDebuffCooldown = 70;
		}
		
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - 10;
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		distance = modifier * inst_2FC2D6B8.hp;
		inst_2FC2D6B8.hspeed = distance * facing;
		instance_destroy();
	}
}

if(existence <= 0){
	instance_destroy();
}