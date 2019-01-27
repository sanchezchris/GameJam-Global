var input_left0 = keyboard_check_pressed(ord("A"));
var input_right0 = keyboard_check_pressed(ord("D"));
var input_left1 = keyboard_check_pressed(vk_left);
var input_right1 = keyboard_check_pressed(vk_right);
var d0 = input_right0 - input_left0;
var d1 = input_right1 - input_left1;

if (d0 != 0 || d1 != 0) {
	var selection0 = global.character_selections[0] + d0;
	var selection1 = global.character_selections[1] + d1;
audio_play_sound(sfx_select, 0, false);
	if (selection0 < 0) { selection0 += 4; }
	else if (selection0 > 3) { selection0 -= 4; }
	if (selection1 < 0) { selection1 += 4; }
	else if (selection1 > 3) { selection1 -= 4; }
	
	for (var i = 0; i < 4; i++) {
		characters[i].selected = (selection0 == i) || (selection1 == i);
	}
	
	global.character_selections[0] = selection0;
	global.character_selections[1] = selection1;
}


if (keyboard_check_pressed(vk_enter)) {
	room_goto(room0);
}



