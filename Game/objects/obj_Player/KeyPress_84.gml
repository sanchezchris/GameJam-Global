if(character == 1){
	if(Attack1 < 0){
		instance_create_layer(x + (facing * 45) , y + 5, "instances", obj_Heinrich1);
		Attack1 = 15;
	}
}