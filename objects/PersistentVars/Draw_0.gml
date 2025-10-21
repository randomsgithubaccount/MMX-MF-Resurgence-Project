if global.var_showfps=1
{
fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyz!)<>ABCDEFGHIJKLMNOPQRSTUVWXYZ:;,.",true, 1);
draw_set_colour(c_white);
draw_set_font(fontmmx);
draw_text(__view_get( e__VW.XView, 0 )+280,__view_get( e__VW.YView, 0 )+20,string_hash_to_newline("FPS = " + string(fps)))
}

