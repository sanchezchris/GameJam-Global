if(player != 1){
if(character == 1){
	if(Attack1 < 0){
		instance_create_layer(x + (facing2 * 45) , y + 5, "instances", obj_Heinrich1);
		Attack1 = 15;
	}
}

if(character == 3){
	if(Attack1 < 0){
		instance_create_layer(x + (facing2 * 20) , y - 5, "instances", obj_Douglas1);
		Attack1 = 15;
	}
}

if(character == 4){
	if(Attack1 < 0){
		instance_create_layer(x + (facing2 * 20) , y - 5, "instances", obj_Cleetus1);
		Attack1 = 15;
	}
}
}