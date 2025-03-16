global.mana		 = 100;
global.confianza = 10;
global.objGame	 = id;
global.book		 = false;
global.menu		 = instance_create_layer(411,231,"Menu",obj_openBook);
instance_deactivate_object(global.menu);


global.my_path	 = path_add();
global.actual_enchanted = [0,0,0,0,0,0,0,0,0]
global.enchanting =false;
path_set_closed(global.my_path,false);
function enchanted_cleaner(){
	show_debug_message(string(global.actual_enchanted))
	for (var i = 0; i < 9; ++i) {
	   global.actual_enchanted[i]=0;
	}
	var _cont = path_get_number(global.my_path)
	for (var j = 0; j < _cont ; ++j) {
	    path_delete_point(global.my_path,0);
	}
}