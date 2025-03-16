if(activate==false){
	activate=true;
	path_add_point(global.my_path,x,y,1);
	if(!global.enchanting) {global.enchanting=true}
	global.actual_enchanted[pos]=1;
}