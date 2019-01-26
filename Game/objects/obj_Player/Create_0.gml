
// In pixels per frame:
movementSpeed = 6;

// In pixels:
minJumpHeight = -50;
maxJumpHeight = -300;

// In frames:
timeToApex = 40;
timeToFallAfterApex = 30;

jumpVelocity = 2 * maxJumpHeight / timeToApex;
gravityOnJumpHeld = -jumpVelocity / timeToApex;
gravityOnJumpRelease = jumpVelocity / minJumpHeight / 2 - jumpVelocity * jumpVelocity / minJumpHeight;
gravityOnFalling = -jumpVelocity / timeToFallAfterApex;

playerGravity = gravityOnJumpRelease;
vertical = 0;

attackAnimation = false;

basicCooldown = 0;
special1Cooldown = 0;
special2Cooldown = 0;
special1Damage = 0;
airJumps = 0;

player = ++global.player;

if (player == 1) {
	character = global.character;
	ctrl = 1;
	facing = 1;
	key_left = ord("A");
	key_right = ord("D");
	key_jump = vk_space;
	key_basic = ord("R");
	key_special1 = ord("T");
	key_special2 = ord("Y");
	
} else {
	character = 4;
	ctrl = 0;
	facing = -1;
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
