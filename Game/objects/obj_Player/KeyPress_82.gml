if(player == 1){
if(BasicCooldown < 0){
	instance_create_layer(x + (facing1 * 45) , y + 5, "instances", obj_BasicAttack);
	BasicCooldown = 15;
}
}