
// This script is called when any character presses their special2 input

if (Attack2 <= 0) {
	global.player = player;
	global.facing = facing;
	
	var _object, _y;
	switch (character) {
		case 1:
			_object = obj_Heinrich2;
			_y = y - 10;
			break;
		case 2:
			_object = obj_AeiserBeard2;
			_y = y - 20;
			break;
		case 3:
			_object = obj_Douglas2;
			_y = y + 10;
			break;
		case 4:
			_object = obj_Cleetus2;
			_y = y - 20;
			break;
	}
	Attack2 = 30;
	instance_create_layer(x, _y, "instances", _object);
}
