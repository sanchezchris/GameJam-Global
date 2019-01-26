
horizontal = 0;
vertical = 0;
grav = 0.2;
spd = 6;
jump = -11.5;

minJumpHeight = 20;
maxJumpHeight = 100;
timeToApex = 1;

jumpVelocity = 2 * maxJumpHeight / timeToApex;
gravityOnJumpHeld = -jumpVelocity / timeToApex;
gravityOnJumpRelease = jumpVelocity / minJumpHeight / 2 - jumpVelocity * jumpVelocity / minJumpHeight;

BasicCooldown = 0;
Attack1 = 0;
Attack2 = 0;
Attack1Damage = 0;
facing = 1;

player = ++global.player;

if (player == 1) {
	ctrl = 1;
	character = 2;
	key_left = ord("A");
	key_right = ord("D");
	key_jump = vk_space;
	key_basic = ord("R");
	key_special1 = ord("T");
	key_special2 = ord("Y");
} else {
	ctrl = 0;
	character = 1;
	key_left = vk_left;
	key_right = vk_right;
	key_jump = vk_up;
	key_basic = ord("I");
	key_special1 = ord("O");
	key_special2 = ord("P");
}
ctrl_jump = gp_face1;
ctrl_basic = gp_face2;
ctrl_special1 = gp_face3;
ctrl_special2 = gp_face4;
