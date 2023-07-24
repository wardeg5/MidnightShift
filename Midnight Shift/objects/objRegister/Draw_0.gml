/// @description Insert description here
// You can write your code in this editor

screenX = 120;
screenY = 81;

//Changing the Register's index----------------------------
if(pressTimer != 0 && global.regIndex != 0){
	pressTimer--;
} 

if(pressTimer == 0){
	global.regIndex = 0
	pressTimer	= 10
}

image_index = global.regIndex;


draw_sprite(sRegister,global.regIndex,0,39);
draw_text_transformed_colour(screenX, screenY, global.screen, 1.5, 1.5, -7, c_green, c_green, c_green, c_green, 1);
//draw_text(screenX,screenY,screen);


//Draw Red Error Screen
if(global.regIndex == 13){
	draw_sprite_ext(sRedScreen,0,0,0,1,1,0,c_white,pressTimer * 0.10 );	
}


if(!audio_is_playing(sndChaching) && !audio_is_playing(sndDoorChime) && !audio_is_playing(sndAMOut) && !audio_is_playing(sndAMIn) && !audio_is_playing(sndRadioOut) && !audio_is_playing(sndRadioIn) && global.curState != "rad1" && global.curState != "rad2" && global.curState != "rad3" && global.curState != "rad4" && global.curState != "rad5" && global.curState != "rad6"){

	if(global.custItems[global.curItem] != -1){
		draw_sprite_ext(global.itemSprite[global.custItems[global.curItem]],0,336,266,.5,.5,0,c_white,1);
	}	
}





