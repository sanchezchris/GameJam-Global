
horizontal = 0;
vertical = 0;
grav = 0.2;
spd = 6;
jump = -11.5;

BasicCooldown = 0;
Attack1 = 0;
Attack2 = 0;
Attack1Damage = 0;
facing = 1;

player = ++global.player;

if (player == 1) {
	character = 1;
	key_left = ord("A");
	key_right = ord("D");
	key_jump = vk_space;
} else {
	character = 1;
	key_left = vk_left;
	key_right = vk_right;
	key_jump = vk_up;
}