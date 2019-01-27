
global.player = player
global.facing = facing
global.character = character;

if (basicCooldown < 0) {
	instance_create_layer(x + (facing * 30) , y + 5, "instances", obj_BasicAttack);
	basicCooldown = 15;
}