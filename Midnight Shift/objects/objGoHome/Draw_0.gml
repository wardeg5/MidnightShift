

if(position_meeting(mouse_x,mouse_y, id)){
	draw_sprite_ext(sGoHome,1,8,8,.5,.5,0,c_white,1);
	
	if(mouse_check_button_pressed(mb_left)){
		room_goto(rYouWon);
	}
} else {
	draw_sprite_ext(sGoHome,0,8,8,.5,.5,0,c_white,.8);	
}

