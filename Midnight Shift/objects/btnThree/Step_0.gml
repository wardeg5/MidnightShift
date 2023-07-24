
if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	if(global.curState == "cust1" || global.curState == "cust2" || global.curState == "cust3" || global.curState == "cust4" || global.curState == "cust5" || global.curState == "cust6"){
		show_debug_message("Pressed: 3");
		global.screen = string_concat(global.screen, "3");
		global.regIndex = 4;
		registerClick();
	
		if(string_length(global.screen) > 7){
			registerError();
		}
	}
}