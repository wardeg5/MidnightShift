/// @description Insert description here
// You can write your code in this editor








if(position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){
	global.showPriceBook = !global.showPriceBook;	
}


//----------------------------------SHOW PRICE BOOK--------------------------------
//----------------------------------SHOW PRICE BOOK--------------------------------
//----------------------------------SHOW PRICE BOOK--------------------------------
//----------------------------------SHOW PRICE BOOK--------------------------------
if(global.showPriceBook){
	draw_sprite(sOpenBook,0,0,0);
	
	_xLeft = 48;
	_xRight = 378;
	_yText = 48;
	_xItemLeft = 72;
	_yItem = -40;
	_xPrice = 152;
	_ySpace = 64;
	_scale = .4;
	
	//draw balogna
	draw_text_color(_xLeft,_yText,global.itemName[0],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[0],0, _xLeft + _xItemLeft, _yText + _yItem, _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[0]);
	draw_text_color(_xLeft + _xPrice,_yText,_price,c_black,c_black,c_black,c_black,1);
	
	//Draw cigs
	draw_text_color(_xLeft,_yText +_ySpace,global.itemName[1],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[1],0, _xLeft + _xItemLeft, _yText + _yItem +_ySpace, _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[1]);
	draw_text_color(_xLeft + _xPrice,_yText +_ySpace,_price,c_black,c_black,c_black,c_black,1);
	
	//Draw cucumber
	draw_text_color(_xLeft,_yText + (_ySpace * 2),global.itemName[2],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[2],0, _xLeft + _xItemLeft, _yText + _yItem + (_ySpace * 2), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[2]);
	draw_text_color(_xLeft + _xPrice,_yText + (_ySpace * 2),_price,c_black,c_black,c_black,c_black,1);
	
	//Draw zucc
	draw_text_color(_xLeft,_yText + (_ySpace * 3),global.itemName[3],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[3],0, _xLeft + _xItemLeft, _yText + _yItem + (_ySpace * 3), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[3]);
	draw_text_color(_xLeft + _xPrice,_yText + (_ySpace * 3),_price,c_black,c_black,c_black,c_black,1);
	
	//Draw milk
	draw_text_color(_xLeft,_yText + (_ySpace * 4),global.itemName[4],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[4],0, _xLeft + _xItemLeft, _yText + _yItem + 20 + (_ySpace * 4), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[4]);
	draw_text_color(_xLeft + _xPrice,_yText + (_ySpace * 4),_price,c_black,c_black,c_black,c_black,1);
	
	
	
	//draw balogna
	draw_text_color(_xRight,_yText,global.itemName[5],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[5],0, _xRight + _xItemLeft, _yText + _yItem, _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[5]);
	draw_text_color(_xRight + _xPrice,_yText,_price,c_black,c_black,c_black,c_black,1);
	
	//Draw cigs
	draw_text_color(_xRight,_yText +_ySpace,global.itemName[6],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[6],0, _xRight + _xItemLeft, _yText + _yItem +_ySpace, _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[6]);
	draw_text_color(_xRight + _xPrice,_yText +_ySpace,_price,c_black,c_black,c_black,c_black,1);
	
	//Draw cucumber
	draw_text_color(_xRight,_yText + (_ySpace * 2),global.itemName[7],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[7],0, _xRight + _xItemLeft, _yText + _yItem + (_ySpace * 2), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[7]);
	draw_text_color(_xRight + _xPrice,_yText + (_ySpace * 2),_price,c_black,c_black,c_black,c_black,1);
	
	//Draw zucc
	draw_text_color(_xRight,_yText + (_ySpace * 3),global.itemName[8],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[8],0, _xRight + _xItemLeft, _yText + _yItem + (_ySpace * 3), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[8]);
	draw_text_color(_xRight + _xPrice,_yText + (_ySpace * 3),_price,c_black,c_black,c_black,c_black,1);
	
	//Draw milk
	draw_text_color(_xRight,_yText + (_ySpace * 4),global.itemName[9],c_black,c_black,c_black,c_black,1);
	draw_sprite_ext(global.itemSprite[9],0, _xRight + _xItemLeft, _yText + _yItem + (_ySpace * 4), _scale,_scale,0,c_white,1);
	_price = string_concat("$", global.itemPrice[9]);
	draw_text_color(_xRight + _xPrice,_yText + (_ySpace * 4),_price,c_black,c_black,c_black,c_black,1);
	
	draw_sprite(sPriceBookExit,0,170,240);
	
}else{
	draw_sprite(sPriceBook,0,170,240);	
}