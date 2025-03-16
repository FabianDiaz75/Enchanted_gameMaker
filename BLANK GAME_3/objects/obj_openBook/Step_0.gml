if(mouse_check_button_pressed(mb_left) and mouse_x>670 ){
	global.book=false;
	status = noone;
	instance_deactivate_object(id);
}

if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 72 && mouse_y < 140){
	status = "red";
}else if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 195 && mouse_y < 260){
	status = "blue";
}else if(mouse_check_button_pressed(mb_left) && mouse_x<140 && mouse_y > 310 && mouse_y < 370){
	status = "yellow";
}

switch (status){
	case "red":
		image_index = 0;
		break;
	
	case "blue":
		image_index = 1;
		break;
		
	case "yellow":
		image_index = 2;
		break;
}

