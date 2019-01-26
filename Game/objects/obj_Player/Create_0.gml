
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
	character = global.character;
	key_left = ord("A");
	key_right = ord("D");
	key_jump = vk_space;
	key_basic = ord("R");
	key_special1 = ord("T");
	key_special2 = ord("Y");
	
} else {
	character = 4;
	key_left = vk_left;
	key_right = vk_right;
	key_jump = vk_up;
	key_basic = ord("I");
	key_special1 = ord("O");
	key_special2 = ord("P");
}