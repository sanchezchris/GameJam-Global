
var input_left = keyboard_check(key_left);
var input_right = keyboard_check(key_right);
var input_jump_pressed = global.controllers[ctrl] ? gamepad_button_check_pressed(ctrl, ctrl_jump) : keyboard_check_pressed(key_jump);
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
var horizontal = move * spd;
vertical = vertical + grav;

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
onGround = false;
if (place_meeting(x, y + vertical, obj_Wall)) {
	onGround = true;
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
		onGround = false;
	}
	vertical = 0;
}
y += vertical;

if ((place_meeting(x, y + 1, obj_Wall)) && input_jump_pressed) {
	vertical = jump;
}

// Animation
if (horizontal != 0) {
	sprite_index = spr_PlayerRun;
} else {
	sprite_index = spr_Player;
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
if (character == 2 && input_special1 && Attack1 < 0) {
	Attack1Damage++;
}

// Attack inputs
if (input_basic_pressed) {
	BasicAttack();
}
if (character != 2 && input_special1_pressed || character == 2 && input_special1_released) {
	SpecialOne();
}
if (input_special2_pressed) {
	SpecialTwo();
}

BasicCooldown--;
Attack1--;
Attack2--;
