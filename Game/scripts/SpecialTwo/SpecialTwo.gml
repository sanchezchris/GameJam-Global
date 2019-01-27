
// This script is called when any character presses their special2 input

if (special2Cooldown <= 0) {
	global.player = player;
	global.facing = facing;
	
	var _object, _x, _y;
	switch (character) {
		case 1:
			_object = obj_Heinrich2;
			_x = x + facing * 65;
			_y = y - 10;
			break;
		case 2:
			_object = obj_AeiserBeard2;
			_x = x;
			_y = y;
			break;
		case 3:
			_object = obj_Douglas2;
			_x = x;
			_y = y + 10;
			break;
		case 4:
			_object = obj_Cleetus2;
			_x = x;
			_y = y;
			break;
	}
	special2Cooldown = 100;
	instance_create_layer(_x, _y, "instances", _object);
}
