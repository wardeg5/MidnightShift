
function scrSetDefaultsForText(){
	lineBreakPos[0, pageNumber] = 999;
	lineBreakNumber[pageNumber] = 0;
	lineBreakOffset[pageNumber] = 0;
	
	tbSprite[pageNumber] = sTextBox3;
	speakerSprite[pageNumber] = noone;
	speakerSide[pageNumber] = 1;
	
	voice[pageNumber] = sndCustTalk1;
	
}




///@param text
///@param [character]
function scrText(_text){
	
	scrSetDefaultsForText();
	
	text[pageNumber] = _text;
	
	if(argument_count > 1){
		
		switch(argument[1]){
			
			case "cust1":
				speakerSprite[pageNumber] = sCust1;
				
				tbSprite[pageNumber] = sTextBox2;
				
				voice[pageNumber] = sndCustTalk1;
				break;
				
			case "cust2":
				speakerSprite[pageNumber] = sDraugur2;
				
				tbSprite[pageNumber] = sTextBox1;
				
				voice[pageNumber] = sndCustTalk1;
				break;
			
			
			
			
		}
		
		
	}
	
	
	
	pageNumber++;
}


///@param option
///@param linkId
function scrOption(_option, _linkId){
	option[optionNumber] = _option;
	optionLinkId[optionNumber] = _linkId;
	
	optionNumber++;
	
}



/// @param textId
function createTextBox(_textId){
	with(instance_create_depth(0,0, -9999, objTextBox)){
		scrGameText(_textId);
	}	
}