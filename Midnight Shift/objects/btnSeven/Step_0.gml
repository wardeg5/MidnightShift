
if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	show_debug_message("Pressed: 7");
	global.screen = string_concat(global.screen, "7");
	global.regIndex = 8;
	registerClick();
	
	if(string_length(global.screen) > 7){
		registerError();
	}
}