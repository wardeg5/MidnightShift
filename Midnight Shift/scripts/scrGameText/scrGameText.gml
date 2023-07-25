///@param textID
function scrGameText(_textId){
	switch(_textId){
		//RADIO TEXT
		case ("rad1"): 
			radioIn();
			scrText("...","rad");
			scrText("building tensions between Washington and the Kremlin continue to escalate","rad");
			scrText("after recent troop build ups in western Europe as part of planned NATO exercises.","rad");
			scrText("Despite American promises that these troop movements are pre-planned,","rad");
			scrText("published ahead of time, and not a prelude to an invasion, the recent","rad");
			scrText("political developments in several Warsaw pact countries which have made","rad");
			scrText("overtures to the US as Eastern Europe has become starved of oil due to","rad");
			scrText("instability in the middle east, has led to paranoia among Soviet leadership","rad");
			scrText("that this could be the end of the Eastern Bloc's system of alliances.","rad");
			scrText("...","rad");
			
			global.nextState = "idle";
			
			
			
			break;
		
		case ("rad2"): 
			radioIn(); 
			//global.clockFrame = 1;
			scrText("...","rad");
			scrText("trouble today as two U.S. Navy F/A 18 fighter jets were shot down by","rad");
			scrText("Soviet air defenses. Believed to be a part of this week's war games,","rad");
			scrText("the fighters were on the edge of USSR airspace. What this means for","rad");
			scrText("current tensions is not clear as of yet, but the President Reagan","rad");
			scrText("has stated his prayers are with the families of the servicemen,","rad");
			scrText("and is to call Soviet leadership later today to discuss de-escalation.","rad");
			scrText("...","rad");
			
			global.nextState = "cust2";
			
			break;
			
		case ("rad3"): 
			radioIn();
			//global.clockFrame = 2;
			scrText("...","rad");
			scrText("Soviet tanks have entered Yugoslavia after failed talks today.","rad");
			scrText("There has been no declaration of war at this time.","rad");
			scrText("...","rad");
			
			global.nextState = "cust3";
			
			break;
			
		case ("rad4"): 
			radioIn();
			//global.clockFrame = 3;
			scrText("...","rad");
			scrText("After nuclear blasts in Paris, London, Kyiv and Moscow, NORAD is on full alert","rad");
			scrText("for any ICBMs and we will keep you updated as the situation develops.","rad");
			scrText("Please tune to 530 AM for FEMA updates on how to stay safe.","rad");
			scrText("...","rad");
			
			global.nextState = "cust4";
			
			break;
			
		case ("rad5"): 
			radioIn();
			//global.clockFrame = 4;
			scrText("...","rad");
			scrText("IF YOU ARE HEARING THIS, YOU NEED TO EVACUATE!","rad");
			scrText("HEAD TO THE OLD QUARRY BY JENSEN'S FARM","rad");
			scrText("THERE IS A MINESHAFT THAT SHOULD BE SAFE","rad");
			scrText("...","rad");
			
			global.nextState = "cust5";
			
			break;
			
		case ("rad6"): 
			radioIn();
			//global.clockFrame = 5;
			scrText("...","rad");
			scrText("sss ssh hhhhk hkhkhkh khkkss hhhhhhs ss....","rad");
			scrText("kk csk sksksk OHss khsSAYkh skCANsksk hhYOUhhsk skskSEEEEsk chEEEEss skk","rad");
			scrText("..","rad");
			scrText(".","rad");
			
			global.nextState = "cust6";
			
			break;
			
		
		
		case ("answering machine"):
			answeringMachineIn();
			scrText("Hey buddy, it's me, your boss");
			scrText("Thanks for picking up my shift today");
			scrText("My wife just bought me a new fishing pole");
			scrText("So I just had to take the day off");
			scrText("You understand, I'm sure");
			scrText("...");
			scrText("So if you don't remember, all you have to do is");
			scrText("Use W, S, and the Space bar to deal with dialog");
			scrText("When a customer comes in, enter the price of their item");
			scrText("into the register and press the plus button with your mouse.");
			scrText("If you mess up, you'll have to start over.");
			scrText("So don't mess up.");
			scrText("Also, you need to type out any leading zeros");
			scrText("for prices less than a dollar");
			scrText("And press the period button twice to reset the register");
			scrText("Have a good day, bud");
			scrText("...");
			scrText("Also, I may need you to cover me tomorrow too,");
			scrText("depending on how many fish I catch today.");
			
			global.nextState = "cust1";
			
			break;
		
		
		//CUSTOMER 1
		case ("cust1"):
			global.canReg = false;
			scrText("Oof, almost ran out of beer, What's this I hear about nukes?", "cust1");
			scrOption("Something about unrest in Russia, I think","cust1 pos1");
			scrOption("It's probably nothing", "cust1 neg1");
			scrOption("Good morning, sir", "cust1 neu1");
			break;
		case ("cust1 pos1"):
			global.canReg = true;
			scrText("Ah, don't worry yourself with that", "cust1");	
			scrText("Do you got any a 'nem big ol' cigars?", "cust1");
			scrText("Nah, I don't see 'em, sheeeit", "cust1");
			
			break;
		case ("cust1 neg1"):
			scrText("What do you know, kid?", "cust1");	
				scrOption("Them commies are cowards","cust1 pos2");
				scrOption("I'm actually a Communist myself, check out my zine", "cust1 neg2");
				scrOption("Good morning, sir", "cust1 neu1");
			
			break;
		case ("cust1 neu1"):
			global.canReg = true;
			scrText("Something feels kinda off in here this morning", "cust1");	
			
			break;
		case ("cust1 pos2"):
			global.canReg = true;
			scrText("True, true", "cust1");	
			scrText("My doctor, she says I should stop drinkin'", "cust1");	
			scrText("What does she know?  I've been drinkin' my whole life.", "cust1");
			
			break;
		case ("cust1 neg2"):
			global.canReg = true;
			scrText("I killed women and children in Vietnam to stop the spread of communism, kid", "cust1");	
			scrText("You should be thanking me", "cust1");
			scrText("Hurry it up, kid", "cust1");
			
			break
			
			
		case ("cust1 fuck up"):
			scrText("You on that reefer, boy?", "cust1");
			scrText("Or are you drunk like me?", "cust1");
			scrText("ah-hyuck", "cust1");
			break;
			
		case ("cust1 goodbye"):
			global.canReg = false;
		
			scrText("brrrrrp", "cust1");
			scrText("Have a good'ne", "cust1");
			global.nextState = "rad2";
			break;
			
		//CUSTOMER 2
		case ("cust2"):
			global.canReg = false;
			scrText("DID HE JUST SAY THE COMMIES ARE GOING TO DROP A NUKULAR BOMB!?!?!", "cust2");
			scrOption("NOT IF WE NUKE THEM FIRST","cust2 pos1");
			scrOption("Uh... don't worry about it", "cust2 neg1");
			scrOption("God, I hope so", "cust2 neu1");
			break;
		case ("cust2 pos1"):
			global.canReg = true;
			scrText("YEAAAAAAAAAHHHH!! WE'RE JUST GONNA NUKE EM.", "cust2");	
			scrText("I'M NOT AFRAID TO DIE FOR MY COUNTRY", "cust2");
			scrText("THE TREE OF LIBERTY GOTTA BE WATERED WITH THE BLOOD OF PATRIOTS", "cust2");
			scrText("ALSO, WE'RE GONNA NUKE THE WHALES AFTER WE'RE DONE WITH THE RUSKIES!!", "cust2");
			
			break;
		case ("cust2 neg1"):
			scrText("OHHH LOOKS LIKE I BROKE UP THE SECRET COMMIE SPY MEETING HUH.", "cust2");
			scrText("OK FINE, ENJOY HELL", "cust2");
				scrOption("I'm actually spying on them for the government","cust2 pos2");
				scrOption("I'm already there, I think", "cust2 neg2");
				scrOption("Sorry", "cust2 neu1");
			
			break;
		case ("cust2 neu1"):
			global.canReg = true;
			scrText("WHATEVER JUST RING ME UP I GOTTA GO HOME AND CATCH WRESTLEMANIA", "cust2");	
			
			break;
		case ("cust2 pos2"):
			global.canReg = true;
			scrText("REALLY?? GAWD BLESS", "cust2");	
			scrText("YOU NEVER KNOW WHO COULD BE A COMMIE", "cust2");	

			
			break;
		case ("cust2 neg2"):
			global.canReg = true;
			scrText("OH YOU THINK YOU'RE SO CLEVER HUH?", "cust2");	
			scrText("WELL, YOU'RE GONNA THINK IT'S REAL FUNNY", "cust2");
			scrText("WHEN THE RUSSIANS INVADE AND OUTLAW MCDONALDS", "cust2");
			scrText("THAT'S RIGHT, WHOSE LAUGHING NOW??", "cust2");
			
			break
			
			
		case ("cust2 fuck up"):
			scrText("I AM NOT MISSING MY WRASTLIN'", "cust2");
			scrText("GO FASTER", "cust2");
			break;
			
		case ("cust2 goodbye"):
			global.canReg = false;
		
				
			scrText("WRESTLEMANIA!", "cust2");
			scrText("HERE I COME!", "cust2");
			global.nextState = "rad3";
			break;
			
			
		//CUSTOMER 3
		case ("cust3"):
			global.canReg = false;
			scrText("What's up dude", "cust3");
			scrOption("How's it going?","cust3 pos1");
			scrOption("Are you going to pay for that?", "cust3 neg1");
			scrOption("Not much", "cust3 neu1");
			break;
		case ("cust3 pos1"):
			global.canReg = true;
			scrText("Radical! Totally gnarly!", "cust3");	

			break;
		case ("cust3 neg1"):
			scrText("Eat my shorts!", "cust3");	
				scrOption("Eh, take it. It's free","cust3 pos2");
				scrOption("I'm gonna call the cops once you leave", "cust3 neg2");
				scrOption("Why should I care, we're all going to die", "cust3 neu1");
			
			break;
		case ("cust3 neu1"):
			global.canReg = true;
			scrText("Exactly. Later, ya narbo barf bag", "cust3");	
			
			break;
		case ("cust3 pos2"):
			global.canReg = true;
			scrText("Hell Yeah!! Punk rock!!", "cust3");		

			
			break;
		case ("cust3 neg2"):
			global.canReg = true;
			scrText("Boot licker NARC!! ", "cust3");	
			
			break	
			
			
		case ("cust3 fuck up"):
			scrText("Take your time, friend", "cust3");
			break;
			
		case ("cust3 goodbye"):
			global.canReg = false;
		
				
			scrText("Welp, thank you", "cust3");
			scrText("See ya around", "cust3");
			global.nextState = "rad4";
			break;
			
		//CUSTOMER 4
		case ("cust4"):
			global.canReg = false;
			scrText("Well, the aliens are finally going to arrive now that the bombs have dropped", "cust4");
			scrOption("I always knew this day would come","cust4 pos1");
			scrOption("Aliens aren't real", "cust4 neg1");
			scrOption("Why?", "cust4 neu1");
			break;
		case ("cust4 pos1"):
			global.canReg = true;
			scrText("Yes, the day of ascension is here", "cust4");	
			scrText("All of humanity will be united when the aliens are summoned by nuclear war", "cust4");
			scrText("I can't wait to be a being of pure light", "cust4");
			
			break;
		case ("cust4 neg1"):
			scrText("Yes they are! I've studied thousands of UFO encounters", "cust4");	
				scrOption("What do the aliens look like?","cust4 pos2");
				scrOption("You're crazy", "cust4 neg2");
				scrOption("What do aliens have to do with nukes?", "cust4 neu1");
			
			break;
		case ("cust4 neu1"):
			global.canReg = true;
			scrText("the nuclear blasts will be heard through space", "cust4");	
			scrText("Alens will come to earth to help rebuild our world", "cust4");
			scrText("According to Argentinian philosopher J. Posadas, the aliens will be communist", "cust4");
			scrText("he believes the aliens must be communist", "cust4");
			scrText("because in no other way can they have achieved such highly developed technology", "cust4");	
			
			
			break;
		case ("cust4 pos2"):
			global.canReg = true;
			scrText("Well for one, they poop out of where you'd think their eyes would be", "cust4");	
			scrText("Also, they have nothing... down there... *motions hands*", "cust4");	
			scrText("I wish they did though", "cust4");
			
			break;
		case ("cust4 neg2"):
			global.canReg = true;
			scrText("That's what everyone else says", "cust4");	
			scrText("They'll be sorry", "cust4");
			
			break
			
			
		case ("cust4 fuck up"):
			scrText("The ALIENS will not forgive you for this", "cust4");
			break;
			
		case ("cust4 goodbye"):
			global.canReg = false;
		
				
			scrText("See you at the ascension", "cust4");
			scrText("Wear green", "cust4");
			global.nextState = "rad5";
			break;
			
			
		//CUSTOMER 5
		case ("cust5"):
			global.canReg = false;
			scrText("Hello youngster", "cust5");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("Good evening ma'am","cust5 pos1");
			scrOption("Didn't you hear about the nukes, you old bag?!", "cust5 neg1");
			scrOption("Hi", "cust5 neu1");
			break;
		case ("cust5 pos1"):
			global.canReg = true;
			scrText("Aren't you nice. Young people these days have no manners", "cust5");	

			break;
		case ("cust5 neg1"):
			scrText("*gasps* How rude! Apologize!", "cust5");	
				scrOption("Sorry ma'am","cust5 pos2");
				scrOption("No!! You're DUSTY and OLD! and we're going to die", "cust5 neg2");
				scrOption("Ok, I'm sorry", "cust5 neu1");
			
			break;
		case ("cust5 neu1"):
			global.canReg = true;
			scrText("hmph", "cust5");	
			
			break;
		case ("cust5 pos2"):
			global.canReg = true;
			scrText("I suppose I can forgive you", "cust5");		

			
			break;
		case ("cust5 neg2"):
			global.canReg = true;
			scrText("I ought to hit you with my shoe!", "cust5");	
			
			break			
			
			
		case ("cust5 fuck up"):
			scrText("I'm making a formal complaint to your manager", "cust5");
			break;
			
		case ("cust5 goodbye"):
			global.canReg = false;
		
				
			scrText("Have a lovely afternoon", "cust5");
			scrText("I'm going to call your manager on Monday", "cust5");
			global.nextState = "rad6";
			break;

		//CUSTOMER 6
		case ("cust6"):
			global.canReg = false;
			scrText("What's happenin', friend?", "cust6");
			scrOption("Just another great day at work!","cust6 pos1");
			scrOption("We were all supposed to evacuate hours ago", "cust6 neg1");
			scrOption("You haven't heard about the bombings? We're next", "cust6 neu1");
			break;
		case ("cust6 pos1"):
			global.canReg = true;
			scrText("Yeah! That's what I'm talking about, baby", "cust6");	
			scrText("Staying positive, nothing gonna hold us back", "cust6");
			scrText("Everyone's so negative, but look at us", "cust6");
			scrText("Ahh I know this night's gonna be great, man", "cust6");
			scrText("I feel great!", "cust6");
			
			break;
		case ("cust6 neg1"):
			scrText("For real? Then why are you still working here?!?!", "cust6");	
				scrOption("I guess I really love working","cust6 pos2");
				scrOption("I lost track of time", "cust6 neg2");
				scrOption("I... Don't know, I should probably go be with my family", "cust6 neu1");
			
			break;
		case ("cust6 neu1"):
			global.canReg = true;
			scrText("I guess we're a couple of dumbasses that wasted our time", "cust6");	
			scrText("At least we don't have to die alone", "cust6");

			break;
		case ("cust6 pos2"):
			global.canReg = true;
			scrText("Man, what the hell is wrong with you?", "cust6");		
			scrText("You gotta re-examine your life", "cust6");	
			scrText("I'm out of here. I gotta find my family", "cust6");	
			
			break;
		case ("cust6 neg2"):
			global.canReg = true;
			scrText("Well, the clock says it's midnight.", "cust6");	
			
			break	
			
			
		case ("cust6 fuck up"):
			scrText("Chill out, dude?", "cust6");
			break;
			
		case ("cust6 goodbye"):
			global.canReg = false;
		
				
			scrText("Things were good while they lasted", "cust6");
			scrText("See ya around, friend", "cust6");
			global.nextState = "nuke";
			break;
	}
}