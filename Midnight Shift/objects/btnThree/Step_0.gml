
if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	show_debug_message("Pressed: 3");
	global.screen = string_concat(global.screen, "3");
	global.regIndex = 4;
	registerClick();
	
	if(string_length(global.screen) > 7){
		registerError();
	}
}