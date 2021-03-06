
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

if (slowDebuff > 0) {
	horizontal *= 0.3;
}

// Horizonal movement
if(sleep == false){

	if (character != 2 || !input_special1) {
		if (place_meeting(x + horizontal, y, obj_Wall)) {
			while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
				x += sign(horizontal);
			}
		} else {
			x += horizontal;
		}
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
if (!sleep) {
	if (onGround) {
		hspeed = 0;
		airJumps = 1;
		doubleJump = false;
		if (input_jump_pressed) {
			vertical = jumpVelocity;
			onGround = false;
			jumpReleased = false;
			playerGravity = gravityOnJumpHeld;
		}
	} else if (airJumps > 0 && input_jump_pressed) {
		doubleJump = true;
		vertical = jumpVelocity;
		jumpReleased = false;
		airJumps--;
		// Heinrich has a larger double-jump.
		if (character == 1) {
			playerGravity = gravityOnJumpHeld;
		}
	}
}
if (input_jump_released && vertical < 0) {
	playerGravity = gravityOnJumpRelease;
} else if (vertical >= 0) {
	playerGravity = gravityOnFalling;
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
if(sleep == false){

if (character == 2 && input_special1 && special1Cooldown <= 0) {
	special1Damage += 0.5;
}

	// Attack inputs
	if (input_basic_pressed) {
		if (character == 4) {
			SpecialOne();
		} else {
			BasicAttack();
		}
	}
	else if (character != 2 && input_special1_pressed || character == 2 && input_special1_released) {
		if (character == 4) {
			BasicAttack();
		} else {
			SpecialOne();
		}
	}
	else if (input_special2_pressed) {
		SpecialTwo();
	}

}


if (basicCooldown < 0) {
	attackAnimation = false;
}


// Animation
if (attackAnimation) {
	sprite_index = global.spriteArray[character + 7];
} else if (horizontal != 0) {
	sprite_index = global.spriteArray[character + 3];
} else {
	sprite_index = global.spriteArray[character - 1];
}

if(flameDebuff > 0){
	flameDebuffCooldown--;
	
	if(flameDebuffCooldown <= 0){
		flameDebuff--;
		flameDebuffCooldown = 30;
	}
}

if(slowDebuff > 0){
	slowDebuffCooldown--;
	if(slowDebuffCooldown <= 0){
		slowDebuff--;
		slowDebuffCooldown = 90;
	}
}

if(sleep == true){
	sleepCooldown--;
	if(sleepCooldown <= 0){
		sleep = false;
	}
}

if(pullTo == true){
	PullToCooldown--;
	if(inst_4F4C548D.x > inst_2FC2D6B8.x){
		move_towards_point(x, y, -25 *pullDir);
	}
	else{
		move_towards_point(x, y, 25 * pullDir);
	}
	
	if(PullToCooldown <= 0){
		pullTo = false;
	}
}

if(hit){
	hspeed = hspeed - 6;
	if(hspeed <=0){
		hit = false;
	}
}

basicCooldown--;
special1Cooldown--;
special2Cooldown--;
