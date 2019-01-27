
global.player = player
global.facing = facing
global.character = character;
attackAnimation = true;

if(character == 1){
	if (basicCooldown < 0) {
	instance_create_layer(x + (facing * 60) , y + 10, "instances", obj_BasicAttack);
	basicCooldown = 15;
	}
}
else if(character == 2){
	if (basicCooldown < 0) {
	instance_create_layer(x + (facing * 55) , y + 5, "instances", obj_BasicAttack);
	basicCooldown = 15;
	}
}
else if(character == 3){
	if (basicCooldown < 0) {
	instance_create_layer(x + (facing * 80) , y + 5, "instances", obj_BasicAttack);
	basicCooldown = 15;
	}
}
else{
	if (basicCooldown < 0) {
	instance_create_layer(x + (facing * 60) , y + 5, "instances", obj_Cleetus1);
	basicCooldown = 15;
	}
}