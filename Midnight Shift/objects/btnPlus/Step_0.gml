
if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	show_debug_message("Pressed: +");
	registerClick();
	
	global.targetPrice = string_concat("$", global.itemPrice[global.curItem]);
	
	if(global.screen == global.targetPrice){
		global.regIndex = 11;
		room_goto(rYouWon);
	} else{
		registerError();
	}
	
	
}