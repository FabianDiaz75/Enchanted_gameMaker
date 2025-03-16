if(global.enchanting)
{
	path_add_point(global.my_path,mouse_x,mouse_y,1);
	draw_path(global.my_path,x,y,true);
	path_delete_point(global.my_path,path_get_number(global.my_path)-1);
}