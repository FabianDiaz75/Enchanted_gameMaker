if(mouse_check_button_released(mb_left) and global.enchanting)
{
	var isSame = true;

	for(var i = 0; i < 6; i++){
		show_debug_message(string(global.actual_enchanted) + " " + string(patron_encanta[i]));
		if(!array_equals(global.actual_enchanted, patron_encanta[i])){
			isSame = false;
		}
		if(isSame){
			show_debug_message(isSame);
			TransitionStart(rm_init, FadeOut, FadeIn);
			break;
		}
		isSame = true;
	}
	show_debug_message(isSame);
	global.enchanting=false;
	global.objGame.enchanted_cleaner();
	with(obj_node) {activate=false};
	show_debug_message("limpio")
}


