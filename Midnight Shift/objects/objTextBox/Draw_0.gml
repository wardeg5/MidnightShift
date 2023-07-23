if(!audio_is_playing(sndDoorChime) && !audio_is_playing(sndAMOut) && !audio_is_playing(sndAMIn) && !audio_is_playing(sndRadioOut) && !audio_is_playing(sndRadioIn)){
	acceptKey = keyboard_check_pressed(vk_space);
	
	//if(global.playMusic && !audio_is_playing(sndOooItsALady)){
	//	audio_play_sound(sndOooItsALady,10,true);
	//	show_debug_message("MUSIC");
	//}


	tbX = camera_get_view_x(view_camera[0]) - 50;
	tbY = camera_get_view_y(view_camera[0]) + 210;
	//144

	//---------------------setup--------------------------//
	if(setup == false){
		setup = true;
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	
		//loop through the pages
		for(var p = 0; p < pageNumber; p++){
			//find how many characters are on each page and store that number in the textLength array
			textLength[p] = string_length(text[p]);
		
			//get the x position for the text box
		
			//character on the left
			textXOffset[p] = 290;
			portraitXOffset[p] = 280;
		
			//character on the right
			if(speakerSide[p] == -1){
				textXOffset[p] = 80;
				portraitXOffset[p] = 440;
			
			}
		
			//no character (Center Text Box)  -- this'll all be different for our game
			if (speakerSprite[p] == noone){
		
				textXOffset[p] = 290;
			}
		
			//setting individual characters and finding where the lines of text should break
			for(var c = 0; c < textLength[p]; c++){
				var _charPos = c+1;
			
				//store individual characters in the "char" array
				char[c,p] = string_char_at(text[p], _charPos);
			
				//get current width of the line
				var _txtUpToChar = string_copy(text[p], 1, _charPos);
				var _curTxtW = string_width(_txtUpToChar) - string_width(char[c,p]);
			
				//get the last free space
				if (char[c,p] == " " ){
					lastFreeSpace = _charPos + 1;
				}
			
				//get the line breaks
				if(_curTxtW - lineBreakOffset[p] > lineWidth){
					lineBreakPos[lineBreakNumber[p], p ] = lastFreeSpace;
					lineBreakNumber[p]++;
				
					var _txtUpToLastSpace = string_copy(text[p], 1, lastFreeSpace);
					var _lastFreeSpaceString = string_char_at(text[p], lastFreeSpace);
					lineBreakOffset[p] = string_width(_txtUpToLastSpace) - string_width(_lastFreeSpaceString);
				}
			}
		
		
			//getting each characters
			for (var c = 0; c < textLength[p]; c++){
			
				var _charPos = c+1;
				var _txtX = tbX + textXOffset[p] + tbBorder;
				var _txtY = tbY + tbBorder;
			
				//get current width of the line
				var _txtUpToChar = string_copy(text[p], 1, _charPos);
				var _curTxtW = string_width(_txtUpToChar) - string_width(char[c,p]);
				var _txtLine = 0;
			
				//compensate for string breaks
				for (var lb = 0; lb < lineBreakNumber[p]; lb++){
				
					//if the current looping character is after a line break
					if (_charPos >= lineBreakPos[lb,p]){
						var _strCopy = string_copy(text[p], lineBreakPos[lb,p], _charPos - lineBreakPos[lb,p]);
						_curTxtW = string_width(_strCopy);
					
						//record the "line" this character should be on
						_txtLine = lb + 1; //+1 since lb starts at 0
					}
				}
			
				//add to the x and y coordinates base on the new info
				charX[c,p] = _txtX + _curTxtW;
				charY[c,p] = _txtY + _txtLine * lineSep;
			
			}
		
		
		}
	}
	
	
	
	//----------------------typing the text------------------
	if (textPauseTimer <= 0){
		if(drawChar < textLength[page]){
			drawChar += textSpeed;
			drawChar = clamp(drawChar, 0, textLength[page]);
		
		
		
			var _checkChar = string_char_at(text[page], drawChar);
			if(_checkChar == "." || _checkChar == "!" || _checkChar == "," || _checkChar == "?"){
				//textPauseTimer = textPauseTime;	
			} else{ //when talking, but not paused
				//typing sound
				if(sndCount < sndDelay){
					sndCount++;	
				} else {
					sndCount = 0;
					audio_play_sound(voice[page], 8, false);
				}
			}
	
	
		} else {
			textPauseTimer--;
		}
	}


	//---------------------flip through pages--------------------
	if(acceptKey){//-------------------------ACCEPT KEY-------------------------//
	
		//show_debug_message("AcceptKey");
		//if typing is done
		if(drawChar == textLength[page]){
		
			//next page
			if(page < pageNumber - 1){
				page++;
				drawChar = 0;
			}
			else{
			
				//link text for options
				if( optionNumber > 0 ){
					createTextBox(optionLinkId[optionPos]);	
				}
			
				switch(global.curState){
					case("rad1"):
						radioOut();
						break;
					case("rad2"):
						radioOut();
						break;
					case("rad3"):
						radioOut();
						break;
					case("rad4"):
						radioOut();
						break;
					case("rad5"):
						radioOut();
						break;
					case("rad6"):
						radioOut();
						break;
						
				}
				stateChange();
			
				instance_destroy();	
			}
		}
		else{
			drawChar = textLength[page];	
		}
	} else {
		//show_debug_message("NOT Accept Key");	
	}
	

	
	
	
	//------------------------draw the text box---------------------------
	var _txtbX = tbX + textXOffset[page];
	var _txtbY = tbY;

	tbImage += tbImageSpeed;
	tbSpriteW = sprite_get_width(tbSprite[page]);
	tbSpriteH = sprite_get_height(tbSprite[page]);

	//draw the speaker
	if (speakerSprite[page] != noone){
		sprite_index = speakerSprite[page];
	
		if(drawChar == textLength[page]){
				image_index = 0;
		}
	
		var _speakerX = tbX + portraitXOffset[page];
		if( speakerSide[page] == -1){
			_speakerX += sprite_width;
		}
	
		//draw the speaker
		show_debug_message("_speakerX + 50");
		show_debug_message(_speakerX + 50);
		show_debug_message("tbY - 265");
		show_debug_message(tbY -265);
		
		//draw_sprite_ext(tbSprite[page], tbImage, tbX + portraitXOffset[page], tbY, sprite_width/tbSpriteW * 1, sprite_height/tbSpriteH * 1, 0, c_white,0.9);
		draw_sprite_ext(sprite_index, image_index, _speakerX + 50, tbY -265, speakerSide[page] * 1,1,0,c_white,1);
	}


	//back of the text box
	draw_sprite_ext(tbSprite[page],tbImage, _txtbX, _txtbY, tbWidth/tbSpriteW, tbHeight/tbSpriteH, 0, c_white, .8);


	//Options
	if (drawChar == textLength[page] && page == pageNumber - 1){
	
		//selecting options
		optionPos += keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));
		optionPos = clamp(optionPos, 0, optionNumber - 1);
	
		//draw the options
		var _opSpace = 20;
		var _opBord = 8;
		for(var op = 0; op < optionNumber; op++){
			//the option box
			var _oW = string_width(option[op]) + _opBord * 2;
			draw_sprite_ext(tbSprite[page], tbImage, _txtbX + 16, _txtbY - _opSpace * optionNumber + _opSpace*op, _oW/tbSpriteW,(_opSpace-1)/tbSpriteH, 0, c_white, 1);
		
			//the arrow
			if(optionPos == op){
				draw_sprite(sArrow,0,_txtbX, _txtbY - _opSpace * optionNumber + _opSpace*op);
			}
		
			//the option text
			draw_text(_txtbX + 12 + _opBord, _txtbY - _opSpace * optionNumber + _opSpace*op + 2, option[op]);
		
		}
	}


	//draw the text
	for(var c = 0; c < drawChar; c++){
	
		//the text
		draw_text(charX[c,page], charY[c,page], char[c, page]);
	}
	
	
	
}