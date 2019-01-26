
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_T = keyboard_check(ord("T"));

var move = key_right - key_left;
horizontal = move * spd;
vertical = vertical + grav;

// Horizonal movement
if(place_meeting(x + horizontal, y, obj_Wall)){
	
	while(!place_meeting(x + sign(horizontal), y, obj_Wall)){
		
		if(character == 2){
			if(!key_T){
			x = x + sign(horizontal);
			}
		}
		else{
			x = x + sign(horizontal);
		}
	horizontal = 0;
	}
}
if(character == 2){
	if(!key_T){
	x = x + horizontal;
	}
}
else{
	x = x + horizontal;
}




// Vertical movement
if(place_meeting(x, y + vertical, obj_Wall)){
	
	while(!place_meeting(x, y + sign(vertical), obj_Wall)){
		
		y = y + sign(vertical);
	}
	vertical = 0;
	
}
y = y + vertical;

if((place_meeting(x, y+1, obj_Wall)) && key_space){
	vertical = jump;
}




// Animation
if(horizontal != 0){
	sprite_index = spr_PlayerRun;
}
else{
	sprite_index = spr_Player;
}




// Facing direction
if(horizontal > 0){
	image_xscale = 1;
	facing = 1
}

if(horizontal < 0){
	image_xscale = -1;
	facing = -1
}




// ability for pirate
if(character == 2){
	if(key_T){
		if(Attack1 < 0){
		Attack1Damage++;
		}
	}
	if(keyboard_check_released(ord("T"))){
		instance_create_layer(x + (facing * 45) , y + 5, "instances", obj_AeiserBeard1);
		Attack1 = 25;
	}
}




BasicCooldown--;
Attack1--;
Attack2--;








