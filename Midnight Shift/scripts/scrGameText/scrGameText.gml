///@param textID
function scrGameText(_textId){
	switch(_textId){
		//RADIO TEXT
		case ("rad1"): 
			radioIn();
			scrText("...");
			scrText("building tensions between Washington and the Kremlin continue to escalate");
			//scrText("after recent troop build ups in western Europe as part of planned NATO exercises.");
			//scrText("Despite American promises that these  troop movements are pre-planned,");
			//scrText("published ahead of time, and not a prelude to an invasion, the recent");
			//scrText("political developments in several Warsaw pact countries which have made");
			//scrText("overtures to the US as Eastern Europe has become starved of oil due to");
			//scrText("instability in the middle east, has led to paranoia among Soviet leadership");
			//scrText("that this could be the end of the Eastern Bloc's system of alliances.");
			//scrText("...");
			
			global.nextState = "idle";
			
			
			
			break;
		
		case ("rad2"): 
			radioIn(); 
			scrText("...");
			scrText("trouble today as two U.S. Navy F/A 18 fighter jets were shot down by");
			//scrText("Soviet air defenses. Believed to be a part of this week's war games,");
			//scrText("the fighters were on the edge of USSR airspace. What this means for");
			//scrText("current tensions is not clear as of yet, but the President Reagan");
			//scrText("has stated his prayers are with the families of the servicemen,");
			//scrText("and is to call Soviet leadership later today to discuss de-escalation.");
			//scrText("...");
			
			break;
			
		case ("rad3"): 
			radioIn();
			scrText("...");
			scrText("Soviet tanks have entered Yugoslavia after failed talks today.");
			scrText("There has been no declaration of war at this time.");
			scrText("...");
			
			break;
			
		case ("rad4"): 
			radioIn();
			scrText("...");
			scrText("After nuclear blasts in Paris, London, Kyiv and Moscow, NORAD is on full alert");
			scrText("for any ICBMs and we will keep you updated as the situation develops.");
			scrText("Please tune to 530 AM for FEMA updates on how to stay safe.");
			scrText("...");
			
			break;
			
		case ("rad5"): 
			radioIn();
			scrText("...");
			scrText("Evacuation instructions?");
			scrText("...");
			
			break;
			
		case ("rad6"): 
			radioIn();
			scrText("...");
			scrText("ssssshhhhhkh#kh#kh#kh#kh####kksshhhhhhsss....");
			scrText("kkcskskskskOHsskhsSAYkhskCANskskhhYOUhhskskskSEEEEskchEEEEssskksshkh");
			scrText("..");
			scrText(".");
			scrText("");
			scrOption("Uh Oh", "rad6 - uh oh");
			
			
			
			break;
			
		case ("rad6 - uh oh"):
			scrText(".");
			scrText("");
			break;
		
		
		case ("answering machine"):
			answeringMachineIn();
			scrText("Hey buddy, it's me, your boss");
			//scrText("Thanks for picking up my shift today");
			//scrText("My wife just bought me a new fishing pole");
			//scrText("So I just had to take the day off");
			//scrText("You understand, I'm sure");
			//scrText("...");
			//scrText("So if you don't remember, all you have to do is");
			//scrText("When a customer comes in, enter the price of their item");
			//scrText("into the register and press the plus button.");
			//scrText("If you mess up, you'll have to start over.");
			//scrText("So don't mess up.");
			//scrText("Have a good day, bud");
			//scrText("...");
			scrText("Also, I may need you to cover me tomorrow too,");
			//scrText("depending on how many fish I catch today.");
			
			global.nextState = "cust1";
			
			break;
		
		
		//CUSTOMER 1
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
			
		case ("cust1 goodbye"):
		
			scrText("brrrrrp", "cust1");
			scrText("Have a good'ne", "cust1");
			global.nextState = "rad2";
			break;
			
		//CUSTOMER 2
		case ("cust2"):
			scrText("DID HE JUST SAY THE COMMIES ARE GOING TO DROP A NUKULAR BOMB!?!?!", "cust2");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("NOT IF WE NUKE THEM FIRST","cust2 pos1");
			scrOption("Uh... don't worry about it", "cust2 neg1");
			scrOption("God I hope so", "cust2 neu1");
			break;
		case ("cust2 pos1"):
			scrText("YEAAAAAAAAAHHHH!! WE'RE JUST GONNA NUKE EM.", "cust2");	
			scrText("I'M NOT AFRAID TO DIE FOR MY COUNTRY", "cust2");
			scrText("THE TREE OF LIBERTY GOTTA BE WATERED WITH THE BLOOD OF PATRIOTS", "cust2");
			scrText("ALSO, WE'RE GONNA NUKE THE WHALES AFTER WE'RE DONE WITH THE RUSKIES!!", "cust2");
			
			break;
		case ("cust2 neg1"):
			scrText("OHHH LOOKS LIKE I BROKE UP THE SECRET COMMIE SPY MEETING HUH. OK FINE, ENJOY HELL", "cust2");	
				scrOption("I'm actually spying on him for the government","cust2 pos2");
				scrOption("I'm already there, I think", "cust2 neg2");
				scrOption("Sorry", "cust2 neu1");
			
			break;
		case ("cust2 neu1"):
			scrText("WHATEVER JUST RING ME UP I GOTTA GO HOME AND CATCH WRESTLEMANIA", "cust2");	
			
			break;
		case ("cust2 pos2"):
			scrText("REALLY?? GAWD BLESS", "cust2");	
			scrText("YOU NEVER KNOW WHO COULD BE A COMMIE", "cust2");	

			
			break;
		case ("cust2 neg2"):
			scrText("OH YOU THINK YOU'RE SO CLEVER HUH?", "cust2");	
			scrText("WELL IT'S GONNA BE REAL FUNNY WHEN THE RUSSIANS INVADE AND OUTLAW MCDONALDS", "cust2");
			scrText("THAT'S RIGHT, WHOSE LAUGHING NOW??", "cust2");
			
			break
			
			
			
			
		//CUSTOMER 4
		case ("cust4"):
			scrText("Well, the aliens are finally going to arrive when the bombs drop", "cust4");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("I always knew this day would come","cust4 pos1");
			scrOption("Aliens aren't real", "cust4 neg1");
			scrOption("Why?", "cust4 neu1");
			break;
		case ("cust4 pos1"):
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
			scrText("the nuclear blasts will be heard through space", "cust4");	
			scrText("Alens will come to earth to help rebuild our world", "cust4");
			scrText("According to Argentinian philosopher J. Posadas, the aliens will be communist", "cust4");
			scrText("he believes the aliens must be communist", "cust4");
			scrText("because in no other way can they have achieved such highly developed technology", "cust4");	
			
			
			break;
		case ("cust4 pos2"):
			scrText("Well for one, they poop out of where you'd think their eyes would be", "cust4");	
			scrText("Also, they have nothing... down there... *motions hands*", "cust4");	
			scrText("I wish they did though", "cust4");
			
			break;
		case ("cust4 neg2"):
			scrText("That's what everyone else says", "cust4");	
			scrText("They'll be sorry", "cust4");
			
			break
	}
}