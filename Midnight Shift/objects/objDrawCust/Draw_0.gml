if(!audio_is_playing(sndDoorChime) && !audio_is_playing(sndAMOut) && !audio_is_playing(sndAMIn) && !audio_is_playing(sndRadioOut) && !audio_is_playing(sndRadioIn)){
	
	if(global.playMusic && !audio_is_playing(sndOooItsALady)){
		audio_play_sound(sndOooItsALady,10,true);
		show_debug_message("MUSIC");
	}
	
	switch(global.curState){
			
		case("rad1"):
			global.clockFrame = 0;
			
		
			break;
		case("cust1"):
			global.clockFrame = 1;
		
			draw_sprite_ext(sCust1, 0, 280, -55, 1,1,0,c_white,1);	
		
			break;	
			
		case("rad2"):
			global.clockFrame = 2;
			break;	
			
		case("cust2"):
			
			draw_sprite_ext(sCust2, 0, 280, -55, 1,1,0,c_white,1);	
			
			break;	
			
		case("rad3"):
			global.clockFrame = 3;
			
			break;	
			
		case("cust3"):
			global.clockFrame = 4;
			draw_sprite_ext(sCust3, 0, 280, -55, 1,1,0,c_white,1);
			
			break;	
			
		case("rad4"):
			global.clockFrame = 5;
			
			break;	
			
		case("cust4"):
			
			draw_sprite_ext(sCust4, 0, 280, -55, 1,1,0,c_white,1);
			
			break;	
			
		case("rad5"):
			global.clockFrame = 6;
			
			break;	
			
		case("cust5"):
			
			draw_sprite_ext(sCust5, 0, 280, -55, 1,1,0,c_white,1);
			
			break;	
			
		case("rad6"):
			global.clockFrame = 7;
			
			break;	
			
		case("cust6"):
			
			draw_sprite_ext(sCust6, 0, 280, -55, 1,1,0,c_white,1);
			
			break;
	}
	
}