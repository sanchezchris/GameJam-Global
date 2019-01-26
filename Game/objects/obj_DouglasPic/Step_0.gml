if(point_in_rectangle(mouse_x, mouse_y, x-sprite_width/2, y- sprite_height/2, x+sprite_width/2, y+sprite_height/2))
{
	
	if(mouse_check_button(mb_left))
	{
		selected = true;
		obj_AsierBeardPic.selected = false;
		obj_HeinrichPic.selected = false;
		obj_CleetusPic.selected = false;
	}
}

if(selected){
	sprite_index = spr_DouglasPic1;
	global.character = 3;
}
else{
	sprite_index = spr_DouglasPic;
}