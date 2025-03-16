if(mouse_check_button_released(mb_left) and global.enchanting)
{
	global.enchanting=false;
	global.objGame.enchanted_cleaner();
	with(obj_node) {activate=false};
	show_debug_message("limpio")
}