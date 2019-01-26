
var input_left = keyboard_check(key_left);
var input_right = keyboard_check(key_right);
var input_jump_pressed = global.controllers[ctrl] ? gamepad_button_check_pressed(ctrl, ctrl_jump) : keyboard_check_pressed(key_jump);
var input_jump_released = keyboard_check_released(key_jump);
var input_basic_pressed = global.controllers[ctrl] ? gamepad_button_check_pressed(ctrl, ctrl_basic) : keyboard_check_pressed(key_basic);
var input_special2_pressed = global.controllers[ctrl] ? gamepad_button_check_pressed(ctrl, ctrl_special2) : keyboard_check_pressed(key_special2);

var input_special1_pressed, input_special1, input_special1_released;
if (character == 2) {
	input_special1 = global.controllers[ctrl] ? gamepad_button_check(ctrl, ctrl_special1) : keyboard_check(key_special1);
	input_special1_released = global.controllers[ctrl] ? gamepad_button_check_released(ctrl, ctrl_special1) : keyboard_check_released(key_special1);
} else {
	input_special1_pressed = global.controllers[ctrl] ? gamepad_button_check_pressed(ctrl, ctrl_special1) : keyboard_check_pressed(key_special1);
}

var move = input_right - input_left;
var horizontal = move * movementSpeed;
vertical = vertical + playerGravity;

// Horizonal movement
if (character != 2 || !input_special1) {
	if (place_meeting(x + horizontal, y, obj_Wall)) {
		while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
			x += sign(horizontal);
		}
	} else {
		x += horizontal;
	}
}

// Vertical movement
if (place_meeting(x, y + vertical, obj_Wall)) {
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
	}
	vertical = 0;
}
y += vertical;

onGround = place_meeting(x, y + 1, obj_Wall);

if (onGround && input_jump_pressed) {
	vertical = jumpVelocity;
	onGround = false;
	jumpReleased = false;
	playerGravity = gravityOnJumpHeld;
}
if (input_jump_released && vertical < 0) {
	playerGravity = gravityOnJumpRelease;
} else if (vertical >= 0) {
	playerGravity = gravityOnFalling;
}

// Animation
if (character == 1) {
	if(attackAnimation){
		sprite_index = spr_HeinrichBasic;
	}
	else if (horizontal != 0) {
		sprite_index = spr_HeinrichRun;
	}else {
		sprite_index = spr_Heinrich;
	}
}
else if(character == 2){
	if(attackAnimation){
		sprite_index = spr_AsierBeardBasic;
	}
	else if (horizontal != 0) {
		sprite_index = spr_AsierBeardRun;
	}else {
		sprite_index = spr_AsierBeard;
	}
}
else if(character == 3){
	if(attackAnimation){
		sprite_index = spr_DouglasBasic;
	}
	else if (horizontal != 0) {
		sprite_index = spr_DouglasRun;
	}else {
		sprite_index = spr_Douglas;
	}
}
else{
	if(attackAnimation){
		sprite_index = spr_CleetusBasic;
	}
	else if (horizontal != 0) {
		sprite_index = spr_CleetusRun;
	}else {
		sprite_index = spr_Cleetus;
	}
}


// Facing direction
if (horizontal > 0) {
	image_xscale = 1;
	facing = 1;
} else if (horizontal < 0) {
	image_xscale = -1;
	facing = -1;
}

// Pirate ability
if (character == 2 && input_special1 && special1Cooldown <= 0) {
	special1Damage++;
}

// Attack inputs
if (input_basic_pressed) {
	BasicAttack();
	attackAnimation = true;
}
else if (character != 2 && input_special1_pressed || character == 2 && input_special1_released) {
	SpecialOne();
	attackAnimation = true;
}
else if (input_special2_pressed) {
	SpecialTwo();
	attackAnimation = true;
}


if (basicCooldown < 0) {
	attackAnimation = false;
}

basicCooldown--;
special1Cooldown--;
special2Cooldown--;
