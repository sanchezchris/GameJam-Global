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

player = global.playerWin;

if(player == 1){
	instance_create_depth(768, 140, 0, obj_Pointer1);
}
else{
	instance_create_depth(768, 140, 0, obj_Pointer2);
}