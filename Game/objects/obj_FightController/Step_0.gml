if(inst_2FC2D6B8.y > window_get_height() + 600){
	room_goto(roomEnd);
	global.winner = inst_4F4C548D.character;
	global.playerWin = inst_4F4C548D.player;
}
if(inst_4F4C548D.y > window_get_height() + 600){
	room_goto(roomEnd);
	global.winner = inst_2FC2D6B8.character;
	global.playerWin = inst_2FC2D6B8.player;
}


