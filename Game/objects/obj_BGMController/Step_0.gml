/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var pos = audio_sound_get_track_position(bgm);

if (pos>total_length) {
	audio_sound_set_track_position(bgm, pos-loop_length);
}