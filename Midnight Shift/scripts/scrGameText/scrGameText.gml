///@param textID
function scrGameText(_textId){
	switch(_textId){
		case ("cust1"):
			scrText("Nukes, am I right?", "cust1");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("Damn right","cust1 pos1");
			scrOption("It's probably nothing", "cust1 neg1");
			scrOption("Good morning, sir", "cust1 neu1");
			break;
		case ("cust1 pos1"):
			scrText("Howdy, youngin.", "cust1");	
			scrText("Do you got any a 'nem big ol' cigars?", "cust1");
			
			break;
		case ("cust1 neg1"):
			scrText("What do you know, kid?", "cust1");	
				scrOption("Them commies are cowards","cust1 pos2");
				scrOption("I'm actually a Communist myself, check out my zine", "cust1 neg2");
				scrOption("Good morning, sir", "cust1 neu1");
			
			break;
		case ("cust1 neu1"):
			scrText("Smells kinda off in here this morning", "cust1");	
			
			break;
		case ("cust1 pos2"):
			scrText("True, true", "cust1");	
			scrText("My doctor, she says I should stop eatin' these", "cust1");	
			scrText("What does she know?  I've been eatin' them my whole life.", "cust1");
			
			break;
		case ("cust1 neg2"):
			scrText("I killed women and children in Vietnam to stop the spread of communism, kid", "cust1");	
			scrText("You should be thanking me", "cust1");
			scrText("Hurry it up", "cust1");
			
			break
	}
}