
key_left = keyboard_check(input_left);
key_right = keyboard_check(input_right);
key_space = keyboard_check_pressed(input_jump);

var move = key_right - key_left;
horizontal = move * spd;
vertical = vertical + grav;

// Horizonal movement
if(place_meeting(x + horizontal, y, obj_Wall)){
	
	while(!place_meeting(x + sign(horizontal), y, obj_Wall)){
		
		x = x + sign(horizontal);
	}
	horizontal = 0;
}
x = x + horizontal;


// Vertical movement
if(place_meeting(x, y + vertical, obj_Wall)){
	
	while(!place_meeting(x, y + sign(vertical), obj_Wall)){
		
		y = y + sign(vertical);
	}
	vertical = 0;
	
}
y = y + vertical;

if((place_meeting(x, y+1, obj_Wall)) && key_space){
	vertical = -5;
}

// Animation

if(horizontal != 0){
	sprite_index = spr_PlayerRun;
}
else{
	sprite_index = spr_Player;
}










