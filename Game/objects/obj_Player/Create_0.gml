
horizontal = 0;
vertical = 0;
grav = 0.1;
spd = 3;

player = global.player++;

if (player == 1) {
	input_left = ord("A");
	input_right = ord("D");
	input_jump = vk_space;
} else {
	input_left = vk_left;
	input_right = vk_right;
	input_jump = vk_up;
}

