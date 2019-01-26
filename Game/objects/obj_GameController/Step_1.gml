var numControllers = gamepad_get_device_count();
for (var i = 0; i < numControllers; i++) {
	global.controllers[i] = gamepad_is_connected(i);
}