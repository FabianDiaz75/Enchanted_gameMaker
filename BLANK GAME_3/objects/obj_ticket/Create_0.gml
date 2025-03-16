spr_vacio= spr_ticket_0;
var _num=choose(0, 1,2,3,4,5,6,7,8,9,10,11);
datosTicket=global.arrTickets[_num]

ds_list_add( global.currentTickets , _num);

sprite_index= datosTicket[0];