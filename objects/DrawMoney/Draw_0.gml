if instance_exists(playerparent)
{
	draw_set_alpha(ialpha)
	fontmmx = font_add_sprite_ext(mmx_font, "1234567890abcdefghijklmnopqrstuvwxyz!)<>ABCDEFGHIJKLMNOPQRSTUVWXYZ:;,.",true, 1);
	draw_set_colour(c_white);
	draw_set_font(fontmmx);

	draw_sprite(sprMoneybar,0, __view_get( e__VW.XView, 0 )+275, __view_get( e__VW.YView, 0 )+224-16)
	draw_set_halign(fa_center)
	draw_text(__view_get( e__VW.XView, 0 )+290,__view_get( e__VW.YView, 0 )+224-16,string_hash_to_newline(global.metalmoney))
	draw_set_alpha(1);
}

