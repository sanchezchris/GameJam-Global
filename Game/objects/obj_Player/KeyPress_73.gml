if(player != 1){
	global.player = 1;
	global.facing = facing;
if(BasicCooldown < 0){
	instance_create_layer(x + (facing * 45) , y + 5, "instances", obj_BasicAttack);
	BasicCooldown = 15;
}
}