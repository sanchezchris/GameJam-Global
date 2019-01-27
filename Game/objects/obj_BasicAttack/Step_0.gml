existence--;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		distance = (1/2) * inst_4F4C548D.hp;
		
		inst_4F4C548D.x = inst_4F4C548D.x +(distance * facing);
		inst_4F4C548D.y = inst_4F4C548D.y - 5;
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		distance = (1/2) * inst_2FC2D6B8.hp;
		
		inst_2FC2D6B8.x = inst_2FC2D6B8.x +(distance * facing);
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - 3;
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
	}
}

if(existence <= 0){
	instance_destroy();
}