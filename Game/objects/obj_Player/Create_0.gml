
// In pixels per frame:
movementSpeed = 12;

// In pixels:
minJumpHeight = -50;
maxJumpHeight = -300;

// In frames:
timeToApex = 20;
timeToFallAfterApex = 15;

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

hp = 0;
flameDebuff = 0;
flameDebuffCooldown = 0;
slowDebuff = 0;
slowDebuffCooldown = 0;
sleep = false;
sleepCooldown = 0;
pullTo = false;
PullToCooldown = 0;
pullDir = 1;

character = global.character_selections[player - 1] + 1;

if (player == 1) {
	ctrl = 1;
	facing = 1;
	key_left = ord("A");
	key_right = ord("D");
	key_jump = ord("W");
	key_basic = ord("C");
	key_special1 = ord("V");
	key_special2 = ord("B");
} else {
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

switch (character) {
	case 1:
		movementSpeed *= 1.5;
		break;
	case 2:
		movementSpeed *= 1.3;
		break;
	case 3:
		movementSpeed *= 1.15;
		break;
	case 4:
		break;
}
