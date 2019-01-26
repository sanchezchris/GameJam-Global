
global.player = player
global.facing = facing
global.character = character;

if (BasicCooldown < 0) {
	
	if(character == 1){
		instance_create_layer(x + (facing * 30) , y + 5, "instances", obj_BasicAttack);
		
	}
	else if(character == 2){
		
	}
	else if(character == 3){
	
	}
	else{
	
	}
	
	
	
	
	
	
	BasicCooldown = 15;
}