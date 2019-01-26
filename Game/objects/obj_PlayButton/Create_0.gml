if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y- sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	
	if(mouse_check_button(mb_left))
	{
		
		presed = true;
	}
	
	
	if(mouse_check_button(mb_left) and pressed == true)
	{
		
		room_goto(room_PickChrar);
		
	}
	
}