if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y-sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	sprite_index = spr_PlayBotton1;
	
	if(mouse_check_button(mb_left))
	{
		room_goto(room_PickChrar);
	}
}
else{
	sprite_index = spr_PlayBotton;
}