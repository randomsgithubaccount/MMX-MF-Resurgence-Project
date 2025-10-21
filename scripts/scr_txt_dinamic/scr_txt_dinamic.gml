/// @description scr_txt_dinamic(x,y,string)
/// @param x
/// @param y
/// @param string

function scr_txt_dinamic(argument0, argument1, argument2) 
{
	var _previousColor;
	_previousColor = draw_get_color();

	draw_set_color(c_white);
	draw_text(argument0,argument1,string_hash_to_newline(argument2));
	draw_set_color(_previousColor);
}
