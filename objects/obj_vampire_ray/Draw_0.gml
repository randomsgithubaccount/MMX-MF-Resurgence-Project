/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if surface_exists(tf)
{
	surface_set_target(tf)
	draw_clear_alpha(c_black,0)
	draw_sprite_tiled(sprite_index,image_index,0,offset)
	surface_reset_target()
	draw_surface(tf,x,y)
	draw_sprite(s_thundervx,image_index,x+8,y+i)
}
else {tf=surface_create(16,i)}