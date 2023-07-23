if(!audio_is_playing(sndDoorChime) && !audio_is_playing(sndAMOut) && !audio_is_playing(sndAMIn) && !audio_is_playing(sndRadioOut) && !audio_is_playing(sndRadioIn)){
	
	if(global.playMusic && !audio_is_playing(sndOooItsALady)){
		audio_play_sound(sndOooItsALady,10,true);
		show_debug_message("MUSIC");
	}
	
	switch(global.curState){
			
		case("rad1"):
			
			
		
			break;
		case("cust1"):
			 
			draw_sprite_ext(sCust1, 0, 280, -55, 1,1,0,c_white,1);	
		
			break;	
			
		case("rad2"):
			
			break;	
			
		case("cust2"):
			
			break;	
			
		case("rad3"):
			
			break;	
			
		case("cust3"):
			
			break;	
			
		case("rad4"):
			
			break;	
			
		case("cust4"):
			
			break;	
			
		case("rad5"):
			
			break;	
			
		case("cust5"):
			
			break;	
			
		case("rad6"):
			
			break;	
			
		case("cust6"):
			
			break;
	}
	
}