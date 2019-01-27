characters = [obj_HeinrichPic, obj_AesierBeardPic, obj_DouglasPic, obj_CleetusPic];
global.character_selections = [0, 1];
for (var i = 0; i < 2; i++) {
	characters[global.character_selections[i]].selected = true;
}