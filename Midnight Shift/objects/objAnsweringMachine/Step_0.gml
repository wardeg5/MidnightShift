if(answered){
	image_index = 0;	
} else{
		
	
	if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	
		global.nextState = "answering machine";
		stateChange();
		answered = true;
	}
}



