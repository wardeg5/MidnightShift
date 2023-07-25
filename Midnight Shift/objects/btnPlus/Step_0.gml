
if(global.canReg && position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	if(global.curState == "cust1" || global.curState == "cust2" || global.curState == "cust3" || global.curState == "cust4" || global.curState == "cust5" || global.curState == "cust6"){
		//show_debug_message("Pressed: +");
		registerClick();
	
		global.targetPrice = string_concat("$", global.itemPrice[global.custItems[global.curItem]]);
	
		if(global.screen == global.targetPrice){
			global.regIndex = 11;
			
			audio_play_sound(sndChaching,1,false);
			
			//show_debug_message("custItems cur item");
			//show_debug_message(global.custItems[global.curItem]);
			//show_debug_message("curItem");
			//show_debug_message(global.curItem);
			//show_debug_message("global.custItems length");
			//show_debug_message(array_length(global.custItems));
			if( global.curItem < array_length(global.custItems) - 1){
				//show_debug_message("GOT THROUGH");
				global.curItem ++; 	
				global.screen = "$";
			} else{
				//THIS CUSTOMER IS DONE
				//Trigger the goodbye text,
				global.screen = "$";
			
				//room_goto(rYouWon);
				//switch to the next rad
			
				//probably make a switch
			
				switch(global.curState){
					case("cust1"):
						createTextBox("cust1 goodbye");
						break;
					case("cust2"):
						createTextBox("cust2 goodbye");
				
						break;
					case("cust3"):
						createTextBox("cust3 goodbye");
				
						break;
					case("cust4"):
						createTextBox("cust4 goodbye");
				
						break;
					case("cust5"):
						createTextBox("cust5 goodbye");
				
						break;
					case("cust6"):
						createTextBox("cust6 goodbye");
				
						break;
				}
			}
		} else{
			registerError();
			global.curItem = 0;
		}
	}
	
	
}