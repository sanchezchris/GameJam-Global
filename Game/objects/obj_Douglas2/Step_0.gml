
if(place_meeting(x, y, obj_Wall)){
	
	vspeed = 0;
	hspeed = 0;

	sprite_index = spr_BombExplosion;
	existance--;
	if(existance <=0){
		instance_destroy();
	}
}
else{
	
	if(!explosion){
		x = x + (facing * spd) - (5 *facing);
		vspeed = vspeed + grav;
	}
	
	if(player == 1){
		if(place_meeting(x, y, inst_4F4C548D) && (!explosion)){
		
			inst_4F4C548D.hp = inst_4F4C548D.hp + damage;
			knockUp = inst_4F4C548D.hp * yModifier;
			inst_4F4C548D.y = inst_4F4C548D.y - knockUp;
			distance = modifier * inst_4F4C548D.hp;
			inst_4F4C548D.hspeed = distance * facing;
			vspeed = 0;
			hspeed = 0;
			explosion = true;
			sprite_index = spr_BombExplosion;
		}
		
		if(explosion){
			existance--;
			if(existance <=0){
				instance_destroy();
			}
		}
	}
	else{
		if(place_meeting(x, y, inst_2FC2D6B8) && (!explosion)){
		
			inst_2FC2D6B8.hp = inst_2FC2D6B8.hp + damage;
			knockUp = inst_2FC2D6B8.hp * yModifier;
			inst_2FC2D6B8.y = inst_2FC2D6B8.y - 15;
			distance = modifier * inst_2FC2D6B8.hp;
			inst_2FC2D6B8.hspeed = distance * facing;
			vspeed = 0;
			hspeed = 0;
			explosion = true;
			sprite_index = spr_BombExplosion;
		}
		
		if(explosion){
			existance--;
			if(existance <=0){
				instance_destroy();
			}
		}
	}
}

