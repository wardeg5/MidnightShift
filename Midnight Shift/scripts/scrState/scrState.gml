// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function stateChange(){
	_state = global.nextState;
	
	switch(_state){
		
		case("idle"):
			
			global.nextState = "";
			global.curState = "idle";
		
			break;
		case("answering machine"):
			
			global.nextState = "";
			global.curState = "answering machine";
			
			
			createTextBox("answering machine");
			
			break;
			
		case("cust1"):
			 
			global.nextState = "";
			global.curState = "cust1";
			
			customerEnter();
			
			createTextBox("cust1");
			setCustomerItemList(1);
			
			//show_debug_message("Just Set Customer Item List");
			//show_debug_message(global.custItems[0]);
			//show_debug_message(global.custItems[1]);
		
			break;	
			
		case("rad2"):
			show_debug_message("RAD2");
			global.nextState = "";
			global.curState = "rad2";
			createTextBox("rad2");
			break;	
			
		case("cust2"):
			
			global.nextState = "";
			global.curState = "cust2";
		
			break;	
			
		case("rad3"):
			
			global.nextState = "";
			global.curState = "rad3";
		
			break;	
			
		case("cust3"):
			
			global.nextState = "";
			global.curState = "cust3";
		
			break;	
			
		case("rad4"):
			
			global.nextState = "";
			global.curState = "rad4";
		
			break;	
			
		case("cust4"):
			
			global.nextState = "";
			global.curState = "cust4";
		
			break;	
			
		case("rad5"):
			
			global.nextState = "";
			global.curState = "rad5";
		
			break;	
			
		case("cust5"):
			
			global.nextState = "";
			global.curState = "cust5";
		
			break;	
			
		case("rad6"):
			
			global.nextState = "";
			global.curState = "rad6";
		
			break;	
			
		case("cust6"):
			
			global.nextState = "";
			global.curState = "cust6";
		
			break;	
		
	}
}