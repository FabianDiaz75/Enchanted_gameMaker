global.mana		 = 100;
global.confianza = 10;
global.book		 = false;
global.menu		 = instance_create_layer(411,231,"Menu",obj_openBook);
instance_deactivate_object(global.menu);
global.my_path	 = path_add();
global.actual_enchanted = [0,0,0,0,0,0,0,0,0]
global.enchanting =false;
function enchanted_cleaner(){
	for (var i = 0; i < 9; ++i) {
	   global.actual_enchanted[i]=0;
	}
	for (var i = 0; i < path_get_number(global.my_path); ++i) {
	    path_delete_point(my_path,i);
	}
}