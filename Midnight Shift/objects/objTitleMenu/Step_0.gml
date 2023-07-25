//get inputs from keyboard   -- I'll implement mouse later, I prefer mouse, but this tutorial does this
upKey = keyboard_check_pressed(ord("W"));
downKey = keyboard_check_pressed(ord("S"));

//UNCOMMENT THIS--------------------------
acceptKey = keyboard_check_pressed(vk_space);

//store number of options in current menu
opLength = array_length(option[opLevel]);

//move through the menu
opPos+= downKey - upKey;
if (opPos >= opLength) {
	opPos = 0;
}
if (opPos < 0) {
	opPos = opLength - 1;
}

if(acceptKey){
	
	var _curOpLevel = opLevel;
	
	switch(opLevel){
		
		//start menu
		case 0:
			//using the options
			switch(opPos){
				//start game
				case 0:
					audio_stop_all();
					room_goto_next();
					
					break;
				//settings
				case 1:
					opLevel = 1;
					break;
				//quit game
				case 2:
					game_end();
					break;
			}
			break;
			
		//settings menu
		case 1:
			//using the options
			switch(opPos){
				//Window Size
				case 0:
					
					break;
				//Brightness
				case 1:
		
					break;
				//Controls
				case 2:
					
					break;
				//Back
				case 3:
					opLevel = 0;
					break;
			}
			break;
			
	}
	
	//set option position back
	if (_curOpLevel != opLevel){
		opPos = 0;
	}
	//correct option length
	opLength = array_length(option[opLevel]);
	
}
