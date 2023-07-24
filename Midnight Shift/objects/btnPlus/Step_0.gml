
if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	show_debug_message("Pressed: +");
	registerClick();
	
	global.targetPrice = string_concat("$", global.itemPrice[global.custItems[global.curItem]]);
	show_debug_message("target price");
	show_debug_message(global.targetPrice);
	show_debug_message("screen");
	show_debug_message(global.screen);
	if(global.screen == global.targetPrice){
		global.regIndex = 11;
		
		if(global.custItems[global.curItem + 1] != -1){
			global.curItem ++; 	
		} else{
			//THIS CUSTOMER IS DONE
			//Trigger the goodbye text,
			room_goto(rYouWon);
			//switch to the next rad
			
			//probably make a switch
		}
	} else{
		registerError();
		global.curItem = 0;
	}
	
	
}