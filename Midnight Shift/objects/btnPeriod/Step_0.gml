
if(global.canReg && position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	if(global.curState == "cust1" || global.curState == "cust2" || global.curState == "cust3" || global.curState == "cust4" || global.curState == "cust5" || global.curState == "cust6"){
		//show_debug_message("Pressed: .");
	
		global.regIndex = 12;
		global.screen = string_concat(global.screen, ".");
		registerClick();
	
		_screenLength = string_length(global.screen);
	
		//check for a double period, that errors it
		for(var i = 0; i < _screenLength; i++){
			if(string_char_at(global.screen, i) == "."){
				//show_debug_message("double period");
			
				registerError();
				break;
			}
		}
	
	
	
	
	
	
	
	
		if(string_length(global.screen) > 7){
			registerError();
		}
	}
}