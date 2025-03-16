randomize();
global.mana		 = 100;
global.confianza = 10;
global.objGame	 = id;
global.book		 = false;
global.menu		 = instance_create_layer(411,231,"Menu",obj_openBook);
instance_deactivate_object(global.menu);

global.currentTickets = ds_list_create();

global.my_path	 = path_add();
global.actual_enchanted = [0,0,0,0,0,0,0,0,0]
global.enchanting =false;
path_set_closed(global.my_path,false);

global.arrTickets= 
[
	[spr_ticket_1,5,0,0,250],
	[spr_ticket_2,3,2,0,300],
	[spr_ticket_3,3,1,1,540],
	[spr_ticket_4,0,3,2,300],
	[spr_ticket_5,0,5,0,250],
	[spr_ticket_6,0,0,5,250],
	[spr_ticket_7,0,0,5,320],
	[spr_ticket_8,0,2,3,420],
	[spr_ticket_9,1,1,3,700],
	[spr_ticket_10,5,0,0,320],
	[spr_ticket_11,2,3,0,420],
	[spr_ticket_12,0,5,0,320]
]

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