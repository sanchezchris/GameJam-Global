if(player != 1){
	global.player = 1;
	global.facing = facing;
if(character == 1){
	if(Attack2 < 0){
		instance_create_layer(x, y - 10, "instances", obj_Heinrich2);
		Attack2 = 30;
	}
}

if(character == 2){
	if(Attack2 < 0){
		instance_create_layer(x, y - 20, "instances", obj_AeiserBeard2);
		Attack2 = 30;
	}
}

if(character == 3){
	if(Attack2 < 0){
		instance_create_layer(x, y + 10, "instances", obj_Douglas2);
		Attack2 = 30;
	}
}

if(character == 4){
	if(Attack2 < 0){
		instance_create_layer(x, y - 20, "instances", obj_Cleetus2);
		Attack2 = 30;
	}
}
}