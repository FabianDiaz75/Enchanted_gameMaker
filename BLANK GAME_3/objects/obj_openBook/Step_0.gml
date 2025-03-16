if(mouse_check_button_pressed(mb_left) and mouse_x>670 ){
	global.book=false;
	status = noone;
	instance_deactivate_object(id);
	image_index = 0;
}

if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 72 && mouse_y < 140){
	image_index = 1;
}else if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 195 && mouse_y < 260){
	image_index = 2;
}else if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 310 && mouse_y < 370){
	image_index = 3;
}

