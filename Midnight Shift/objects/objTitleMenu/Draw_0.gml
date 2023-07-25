draw_set_font(global.font_main);

//dynamically get width and height of menu
var _newWidth = 0;
for(var i = 0; i < opLength; i++){
	var _opWidth = string_width(option[opLevel, i]);
	_newWidth = max(_newWidth,_opWidth);
}
width = _newWidth + opBorder * 2;
height = opBorder * 2 + string_height(option[0, 0]) + (opLength - 1) * opSpace;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/4 - width/2 - 30;//IDK why 4 worked
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/4 - height/2 + 64;//tut used 2

//draw menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height,0,c_white,1);

// draw the options

draw_set_valign(fa_top);
draw_set_halign(fa_left);

for(var i = 0; i < opLength; i++){
	var _c = c_white;
	
	if(opPos == i){
		_c = c_yellow;
	}
	
	draw_text_color(x+opBorder, y+opBorder + opSpace*i, option[opLevel, i], _c, _c, _c, _c, 1);
	
}