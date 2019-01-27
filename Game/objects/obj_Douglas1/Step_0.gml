
x = x + (facing * spd) - (5 *facing);
vspeed = vspeed + grav;

if(player == 1){
	if(place_meeting(x, y, inst_4F4C548D)){
		
		inst_4F4C548D.y = inst_4F4C548D.y - 10;
		inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
		distance = modifier * inst_4F4C548D.hp;
		inst_4F4C548D.hspeed = distance * facing;
		instance_destroy();
	}
}
else{
	if(place_meeting(x, y, inst_2FC2D6B8)){
		
		inst_2FC2D6B8.y = inst_2FC2D6B8.y - 10;
		inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
		distance = modifier * inst_2FC2D6B8.hp;
		inst_2FC2D6B8.hspeed = distance * facing;
		instance_destroy();
	}
}

if(place_meeting(x, y, obj_Wall)){
	instance_destroy();
}

