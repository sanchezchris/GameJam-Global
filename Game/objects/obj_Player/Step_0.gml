
input_left = keyboard_check(key_left);
input_right = keyboard_check(key_right);
input_jump = keyboard_check_pressed(key_jump);


var move = input_right - input_left;
horizontal = move * spd;
vertical = vertical + grav;

// Horizonal movement
if(place_meeting(x + horizontal, y, obj_Wall)){
	
	if(!place_meeting(x + sign(horizontal), y, obj_Wall)){
		
		if(character == 2){
			if(!input_special1){
			x = x + sign(horizontal);
			}
		}
		else{
			x = x + sign(horizontal);
		}
	}
	horizontal = 0;
}
if(character == 2){
	if(!input_special1){
	x = x + horizontal;
	}
}
else{
	x = x + horizontal;
}




// Vertical movement
if(place_meeting(x, y + vertical, obj_Wall)){
	
	if(!place_meeting(x, y + sign(vertical), obj_Wall)){
		
		y = y + sign(vertical);
	}
	vertical = 0;
	
}
y = y + vertical;

if((place_meeting(x, y+1, obj_Wall)) && input_jump){
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
if(player == 1){
	if(horizontal > 0){
		image_xscale = 1;
		facing1 = 1;
		}
	if(horizontal < 0){
		image_xscale = -1;
		facing1 = -1;
	}
}
else{
	if(horizontal > 0){
		image_xscale = 1;
		facing2 = 1;
	}
	if(horizontal < 0){
		image_xscale = -1;
		facing2 = -1;
	}
}







// ability for pirate
if(character == 2){
	if(input_special1){
		if(Attack1 < 0){
		Attack1Damage++;
		}
	}
	if(keyboard_check_released(key_special1)){
		instance_create_layer(x + (facing * 45) , y + 5, "instances", obj_AeiserBeard1);
		Attack1 = 25;
	}
}




BasicCooldown--;
Attack1--;
Attack2--;

