if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	sprite_index = spr_PlayBotton1;
	
	if(mouse_check_button(mb_left))
	{
		audio_play_sound(sfx_confirm, 0, false);
		room_goto(room_TitleScreen);
	}
}
else{
	sprite_index = spr_PlayBotton;
}