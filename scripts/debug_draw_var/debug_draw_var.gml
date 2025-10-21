function debug_draw_var(argument0, argument1, argument2) {
	//0 - Label
	//1 - var (casted here)
	//2 - xpos
	draw_set_font(fntSmall)
	draw_set_alpha(1)
	draw_set_color(c_black)
	draw_text(argument2+1,10+(i*12)+1,string_hash_to_newline(argument0+string(argument1)));

	draw_set_color(c_white)
	draw_text(argument2,10+(i*12),string_hash_to_newline(argument0+string(argument1)));
	i+=1



}
