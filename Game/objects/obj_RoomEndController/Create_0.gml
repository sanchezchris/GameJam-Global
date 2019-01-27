winner = global.winner;

if(winner == 1){
	instance_create_depth(768, 288, 0, obj_HeinrichPic);
}
else if(winner == 2){
	instance_create_depth(768, 288, 0, obj_AesierBeardPic);
}
else if(winner == 3){
	instance_create_depth(768, 288, 0, obj_DouglasPic);
}
else if(winner == 4){
	instance_create_depth(768, 288, 0, obj_CleetusPic);
}