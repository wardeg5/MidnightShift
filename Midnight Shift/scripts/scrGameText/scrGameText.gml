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
			scrText("I fought them over there so you don't fight them over here, kid", "cust1");	
			scrText("You should be thanking me", "cust1");
			scrText("Hurry it up", "cust1");
			
			break
			case ("cust1 goodbye"):

            scrText("brrrrrp");
            scrText("Have a good'ne");
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
			
		
			
		//CUSTOMER 3
		case ("cust3"):
			scrText("What's up dude", "cust3");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("How's it going?","cust3 pos1");
			scrOption("Are you going to pay for that?", "cust3 neg1");
			scrOption("Not much", "cust3 neu1");
			break;
		case ("cust3 pos1"):
			scrText("Radical! Totally gnarly!", "cust3");	

			break;
		case ("cust3 neg1"):
			scrText("Eat my shorts!", "cust3");	
				scrOption("Eh, take it. It's free","cust3 pos2");
				scrOption("I'm gonna call the cops once you leave", "cust3 neg2");
				scrOption("Why should I care, we're all going to die", "cust3 neu1");
			
			break;
		case ("cust3 neu1"):
			scrText("Exactly. Later, ya narbo barf bag", "cust3");	
			
			break;
		case ("cust3 pos2"):
			scrText("Hell Yeah!! Punk rock!!", "cust3");		

			
			break;
		case ("cust3 neg2"):
			scrText("Boot licker NARC!! ", "cust3");	
			
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
			scrText("Aliens will come to earth to help rebuild our world", "cust4");
			scrText("According to Argentinian philosopher J. Posadas, the aliens will be communist", "cust4");
			scrText("he believes the aliens must be communist", "cust4");
			scrText("because in no other way can they have achieved such highly developed technology", "cust4");	
			
			
			break;
		case ("cust4 pos2"):
			scrText("Well for one, they poop out of where you'd think their eyes would be", "cust4");	
			scrText("Also, they have nothing... down there... *motions hands*", "cust4");	
			scrText("I wish they did, though", "cust4");
			
			break;
		case ("cust4 neg2"):
			scrText("That's what everyone else says", "cust4");	
			scrText("They'll be sorry", "cust4");
			break
			
		//CUSTOMER 5
		case ("cust5"):
			scrText("Hello youngster", "cust5");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("Good evening ma'am","cust5 pos1");
			scrOption("What's up, you old bag?!", "cust5 neg1");
			scrOption("Hi", "cust5 neu1");
			break;
		case ("cust5 pos1"):
			scrText("Aren't you nice. Young people these days have no manners", "cust5");	

			break;
		case ("cust5 neg1"):
			scrText("*gasps* How rude! Apologize!", "cust5");	
				scrOption("Sorry ma'am","cust5 pos2");
				scrOption("No!! You're DUSTY and OLD!", "cust5 neg2");
				scrOption("Ok, I'm sorry", "cust5 neu1");
			
			break;
		case ("cust5 neu1"):
			scrText("hmph", "cust5");	
			
			break;
		case ("cust5 pos2"):
			scrText("I suppose I can forgive you", "cust5");		

			
			break;
		case ("cust5 neg2"):
			scrText("I ought to hit you with my shoe!", "cust5");	
			
			break			

		//CUSTOMER 6
		case ("cust6"):
			scrText("What's up? What's happenin'?", "cust6");
			//scrText("Yeeeup");
			//scrText("Fuggin Russia");
			scrOption("Just another great day at work!","cust6 pos1");
			scrOption("We were all supposed to evacuate hours ago", "cust6 neg1");
			scrOption("You haven't heard about the bombings? We're next", "cust6 neu1");
			break;
		case ("cust6 pos1"):
			scrText("Yeah! That's what I'm talking about baby", "cust6");	
			scrText("Staying positive, nothing gonna hold us back", "cust6");
			scrText("Everyone's so negative, but look at us", "cust6");
			scrText("Ahh I know this night's gonna be great man", "cust6");
			scrText("I feel invincible!", "cust6");
			
			break;
		case ("cust6 neg1"):
			scrText("For real? Then why are you still working here?!?!", "cust6");	
				scrOption("I guess I really love working","cust6 pos2");
				scrOption("I lost track of time", "cust6 neg2");
				scrOption("I... Don't know", "cust6 neu1");
			
			break;
		case ("cust6 neu1"):
			scrText("You're stupid as hell. I guess I am too, though.", "cust6");	
			scrText("At least we don't have to die alone", "cust6");

			break;
		case ("cust6 pos2"):
			scrText("Man, what the hell is wrong with you?", "cust6");		
			scrText("You gotta re-examine your life", "cust6");	
			scrText("I'm out of here. I gotta find my family", "cust6");	
			
			break;
		case ("cust6 neg2"):
			scrText("Well, the clock says it's midnight.", "cust6");	
			
			break	
			
	}
}