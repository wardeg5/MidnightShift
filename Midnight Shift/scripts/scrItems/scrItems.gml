
function initItems(){
	//UNCOMMENT THIS FOR RANDOM VALUES ON EACH PLAY THROUGH
	randomize(); 
	
	//show_debug_message("INIT ITEMS");
	
	global.itemName[0] = "Bologna";
	global.itemName[1] = "Cigs";
	global.itemName[2] = "Cucumber";
	global.itemName[3] = "Zucchini";
	global.itemName[4] = "Milk";
	global.itemName[5] = "Toilet Paper";
	global.itemName[6] = "Hot Dogs";
	global.itemName[7] = "Beer";
	global.itemName[8] = "Saxophone";
	global.itemName[9] = "Dog Treats";
	
	global.itemSprite[0] = sBologna;
	global.itemSprite[1] = sCigs;
	global.itemSprite[2] = sCucumber;
	global.itemSprite[3] = sZucchini;
	global.itemSprite[4] = sMilk;
	global.itemSprite[5] = sToiletPaper;
	global.itemSprite[6] = sHotDogs;
	global.itemSprite[7] = sBeer;
	global.itemSprite[8] = sSaxophone;
	global.itemSprite[9] = sDogTreats;
	
	
	global.itemPrice[0] = 2.24;
	global.itemPrice[1] = 1.50;
	global.itemPrice[2] = 0.30;
	global.itemPrice[3] = 0.27;
	global.itemPrice[4] = 2.10;
	global.itemPrice[5] = 7.34;
	global.itemPrice[6] = 2.06;
	global.itemPrice[7] = 4.76;
	global.itemPrice[8] = 399.99;
	global.itemPrice[9] = 17.76;
	
	for(var i = 0; i < 10; i++){
		global.itemPrice[i] += random_range(-0.17,0.17);
	}	
}

///@param customer number
function setCustomerItemList(_cust){
	
	show_debug_message("SET CUSTOMER ITEM LIST");
	global.curItem = 0;
	
	//clear out custItems array as good as I think I can for now
	for(var i = 0; i < array_length(global.custItems) ; i++){
		global.custItems[i] = -1;	
	}
	
	switch(_cust){
		case(1):
			global.custItems = [7,1];
			break;
		case(2):
			global.custItems = [6,7,2,1];
			break;
		case(3):
			global.custItems = [9,4,3];
			break;
		case(4):
			
			global.custItems = [5,5,5,5,1,0];
			break;
		case(5):
			
			global.custItems = [2,3,1,3,7,9,2,4];
			break;
		case(6):
			
			global.custItems = [8];
			break;
	}
	
	
	
	
}


function registerClick(){
	audio_play_sound(sndRegClick,2,false);
}

function registerCorrect(){
	audio_play_sound(sndChaching,1,false);	
}

function registerError(){
	
	audio_play_sound(sndRegError,1,false);
	//will have to be 13
	global.regIndex = 13;	
	global.screen = "$";
	
	switch(global.curState){
		case("cust1"):
			createTextBox("cust1 fuck up");
			break;
		case("cust2"):
			createTextBox("cust2 fuck up");
		
			break;
		case("cust3"):
			createTextBox("cust3 fuck up");
		
			break;
		case("cust4"):
			createTextBox("cust4 fuck up");
		
			break;
		case("cust5"):
			createTextBox("cust5 fuck up");
		
			break;
		case("cust6"):
			createTextBox("cust6 fuck up");
		
			break;
			
	}
	
}

function customerEnter(){
	
	audio_play_sound(sndDoorChime,1,false);
	global.playMusic = true;
	
	
}


function customerLeave(){
	
	audio_play_sound(sndDoorChime,1,false);
		
}

function radioIn(){
	audio_stop_sound(sndOooItsALady);
	
	audio_play_sound(sndRadioIn,1,false);
	
	global.playMusic = false;
}

function radioOut(){
	audio_stop_sound(sndOooItsALady);
	
	audio_play_sound(sndRadioOut,1,false);
	
	global.playMusic = true;
	
}

function answeringMachineIn(){
	//audio_stop_sound(sndOooItsALady);
	
	audio_play_sound(sndAMIn,1,false);
	
	//global.playMusic = false;
}

function answeringMachineOut(){
	//audio_stop_sound(sndOooItsALady);
	
	audio_play_sound(sndAMOut,1,false);
	
	global.playMusic = true;
	
}