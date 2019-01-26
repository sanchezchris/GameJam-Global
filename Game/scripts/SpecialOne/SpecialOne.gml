
// This script is called when any character except Aeiser presses their special1 input,
// or when Aeiser releases their special1 input.

if (Attack1 <= 0) {
	global.player = player;
	global.facing = facing;
	
	var _object, _x, _y;
	switch (character) {
		case 1:
			_object = obj_Heinrich1;
			_x = x + facing * 45;
			_y = y + 5;
			Attack1 = 15;
			break;
		case 2:
			_object = obj_AeiserBeard1;
			_x = x + facing * 45;
			_y = y + 5;
			Attack1 = 25;
			break;
		case 3:
			_object = obj_Douglas1;
			_x = x + facing * 20;
			_y = y - 5;
			Attack1 = 15;
			break;
		case 4:
			_object = obj_Cleetus1;
			_x = x + facing * 20;
			_y = y - 5;
			Attack1 = 15;
			break;
	}
	instance_create_layer(_x, _y, "instances", _object);
}