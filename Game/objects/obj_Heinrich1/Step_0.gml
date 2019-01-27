existence--;

x = x + (facing * spd);

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		if(inst_4F4C548D.flameDebuff < 5){
			inst_4F4C548D.flameDebuff++;
			inst_4F4C548D.flameDebuffCooldown = 60;
		}
		
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		instance_destroy();
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		if(inst_2FC2D6B8.flameDebuff < 5){
			inst_2FC2D6B8.flameDebuff++;
			inst_2FC2D6B8.flameDebuffCooldown = 60;
		}
		
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		instance_destroy();
	}
}

if(existence <= 0){
	instance_destroy();
}